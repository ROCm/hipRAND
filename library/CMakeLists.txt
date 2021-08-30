set( lib_SOVERSION 1.1 )
set( hiprand_SOVERSION ${lib_SOVERSION} )

include(CMakePackageConfigHelpers)

# hipRAND library
# Get hipRAND sources
if(HIP_COMPILER STREQUAL "nvcc")
    set(hipRAND_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/nvcc_detail/hiprand.cpp)
else()
    set(hipRAND_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/hcc_detail/hiprand.cpp)
endif()

# Configure a header file to pass the hipRAND version
configure_file(
    "${PROJECT_SOURCE_DIR}/library/include/hiprand_version.h.in"
    "${PROJECT_BINARY_DIR}/library/include/hiprand_version.h"
    @ONLY
)

# Build
if(HIP_COMPILER STREQUAL "nvcc")
    set_source_files_properties(${hipRAND_SRCS} PROPERTIES LANGUAGE CUDA)
    set(CUDA_HOST_COMPILER ${CMAKE_CXX_COMPILER})
endif()
add_library(hiprand ${hipRAND_SRCS})
target_include_directories(hiprand
    PUBLIC
        $<BUILD_INTERFACE:${PROJECT_BINARY_DIR}/library/include>
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/library/include>
        $<INSTALL_INTERFACE:hiprand/include>
)

if(HIP_COMPILER STREQUAL "nvcc")
    target_link_libraries(hiprand
        ${CUDA_curand_LIBRARY}
    )
else()
    # Remove this check when we no longer build with older rocm stack(ie < 1.8.2)
    target_link_libraries(hiprand PRIVATE roc::rocrand hip::device)
	if (NOT WIN32)
      foreach(amdgpu_target ${AMDGPU_TARGETS})
          target_link_libraries(hiprand PRIVATE --amdgpu-target=${amdgpu_target})
      endforeach()
	endif()
endif()

rocm_set_soversion(hiprand ${hiprand_SOVERSION})
set_target_properties(hiprand
    PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/library"
        DEBUG_POSTFIX "-d"
        INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/rocrand/lib"
)

set(hiprandtargets hiprand)

# Install...
if(BUILD_SHARED_LIBS)
    # ... .so lib and namelinks
    install(
        TARGETS ${hiprandtargets}
        EXPORT hiprand-targets
        ARCHIVE DESTINATION hiprand/lib ${DEVEL_COMPONENT}
        LIBRARY DESTINATION hiprand/lib ${RUNTIME_COMPONENT} NAMELINK_SKIP
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_EXECUTE WORLD_READ
    )
    install(
        TARGETS ${hiprandtargets}
        EXPORT hiprand-targets
        LIBRARY DESTINATION hiprand/lib ${DEVEL_COMPONENT} NAMELINK_ONLY
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_EXECUTE WORLD_READ

    )
else()
    # ... .a lib
    install(
        TARGETS ${hiprandtargets}
        EXPORT hiprand-targets
        ARCHIVE DESTINATION hiprand/lib ${DEVEL_COMPONENT}
        LIBRARY DESTINATION hiprand/lib ${DEVEL_COMPONENT}
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_EXECUTE WORLD_READ
    )
endif()

# ... headers
install(
    DIRECTORY
        "include/"
        "${PROJECT_BINARY_DIR}/library/include/"
    DESTINATION hiprand/include
    ${DEVEL_COMPONENT}
    FILES_MATCHING
    PATTERN "hiprand*h"
    PATTERN "hiprand*hpp"
    PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ
)
# .cmake files
install(
    EXPORT hiprand-targets
    NAMESPACE hip::
    DESTINATION hiprand/lib/cmake/hiprand
    ${DEVEL_COMPONENT}
)

# install library to C:\hipSDK\bin
if (WIN32)
  install (TARGETS hiprand DESTINATION "${CMAKE_INSTALL_PREFIX}/bin")
endif()

set(INCLUDE_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/hiprand/include")
set(LIB_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/hiprand/lib")
set(FORTRAN_SRCS_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/hiprand/src/fortran")
configure_package_config_file(
    src/hiprand-config.cmake.in ${CMAKE_CURRENT_BINARY_DIR}/hiprand-config.cmake
    INSTALL_DESTINATION ${LIB_INSTALL_DIR}/cmake/hiprand
    PATH_VARS INCLUDE_INSTALL_DIR LIB_INSTALL_DIR FORTRAN_SRCS_INSTALL_DIR
)
write_basic_package_version_file(
    ${CMAKE_CURRENT_BINARY_DIR}/hiprand-config-version.cmake
    VERSION ${hiprand_VERSION}
    COMPATIBILITY SameMajorVersion
)
install(
    FILES
        ${CMAKE_CURRENT_BINARY_DIR}/hiprand-config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/hiprand-config-version.cmake
    DESTINATION hiprand/lib/cmake/hiprand
    ${DEVEL_COMPONENT}
)

# Fortran wrappers for hipRAND and rocRAND
if(BUILD_FORTRAN_WRAPPER)
    add_subdirectory(src/fortran)
endif()

# Package (make package)
# Generates .deb, .zip., and .tar.gz packages
find_program(RPMBUILD_EXE rpmbuild)
find_program(DPKG_EXE dpkg)
# The following code is setting variables to control the behavior of CPack to generate our
if( WIN32 )
    set( CPACK_SOURCE_GENERATOR "ZIP" )
    set( CPACK_GENERATOR "ZIP" )
else( )
    set( CPACK_SOURCE_GENERATOR "TGZ;ZIP" )
#    set( CPACK_GENERATOR "DEB;RPM" CACHE STRING "cpack list: 7Z, DEB, IFW, NSIS, NSIS64, RPM, STGZ, TBZ2, TGZ, TXZ, TZ, ZIP" )
#    set( CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON )
endif( )

if(EXISTS ${RPMBUILD_EXE})
    list(APPEND CPACK_GENERATOR "RPM")
    if(ROCM_USE_DEV_COMPONENT)
        set(CPACK_RPM_COMPONENT_INSTALL ON)
    endif()
endif()
if(EXISTS ${DPKG_EXE})
    list(APPEND CPACK_GENERATOR "DEB")
    if(ROCM_USE_DEV_COMPONENT)
        set(CPACK_DEB_COMPONENT_INSTALL ON)
        execute_process(
            COMMAND dpkg --print-architecture
            RESULT_VARIABLE PROC_RESULT
            OUTPUT_VARIABLE COMMAND_OUTPUT
            OUTPUT_STRIP_TRAILING_WHITESPACE)
        if(PROC_RESULT EQUAL "0" AND NOT COMMAND_OUTPUT STREQUAL "")
            set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "${COMMAND_OUTPUT}")
        endif()
    endif()
endif()
set(CPACK_PACKAGE_NAME "hiprand")
set(CPACK_PACKAGE_VENDOR "Advanced Micro Devices, Inc")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "hipRAND Maintainer <hiprand-maintaner@amd.com>")
string( TOLOWER "${HIP_RUNTIME}" HIP_RUNTIME_LOWER )
if( HIP_RUNTIME_LOWER STREQUAL "rocclr" )
    rocm_package_add_dependencies("hip-rocclr >= 3.5.0")
elseif( HIP_RUNTIME STREQUAL "cuda" )
    rocm_package_add_dependencies("hip-nvcc >= 3.5.0")
endif( )
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "The hipRAND project provides wrappers which allow users to write code for either CUDA or ROCm.")

set(CPACK_RPM_PACKAGE_RELOCATABLE OFF)
set(CPACK_RPM_PACKAGE_AUTOREQPROV OFF CACHE BOOL "")
set(CPACK_PACKAGE_VERSION ${hipRAND_VERSION_MAJOR}.${hipRAND_VERSION_MINOR}.${hipRAND_VERSION_PATCH})
rocm_package_add_dependencies("rocrand >= ${CPACK_PACKAGE_VERSION}")
set(CPACK_PACKAGE_VERSION_MAJOR ${hipRAND_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${hipRAND_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${hipRAND_VERSION_PATCH})

if(DEFINED ENV{ROCM_LIBPATCH_VERSION})
  set(CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION}.$ENV{ROCM_LIBPATCH_VERSION}")
endif()

set(CPACK_DEBIAN_FILE_NAME "DEB-DEFAULT")
set(CPACK_RPM_FILE_NAME "RPM-DEFAULT")

# Below block of code is to support older version of rocm-cmake
# it checks for occurance of '-' in TWEAK and returns the substring after the last '-'
if (hipRAND_VERSION_TWEAK STREQUAL "" OR NOT DEFINED hipRAND_VERSION_TWEAK)
  set(hipRAND_VERSION_TWEAK "local")
else ()
  string(FIND ${hipRAND_VERSION_TWEAK} "-" DASH_POS REVERSE)
  set(MINUS_ONE -1)
  if (NOT DASH_POS EQUAL MINUS_ONE)
    math(EXPR DASH_POS "${DASH_POS}+1")
    string(SUBSTRING ${PROJECT_VERSION_TWEAK} ${DASH_POS} 7 PARSED_GIT_TAG)
    set(hipRAND_VERSION_TWEAK ${PARSED_GIT_TAG})
  endif()
endif()

set(DEBIAN_VERSION ${hipRAND_VERSION_TWEAK})
if(DEFINED ENV{CPACK_DEBIAN_PACKAGE_RELEASE})
  set(DEBIAN_VERSION $ENV{CPACK_DEBIAN_PACKAGE_RELEASE})
endif()

set(RPM_RELEASE ${hipRAND_VERSION_TWEAK})
if(DEFINED ENV{CPACK_RPM_PACKAGE_RELEASE})
  set(RPM_RELEASE $ENV{CPACK_RPM_PACKAGE_RELEASE})
endif()

# '%{?dist}' breaks manual builds on debian systems due to empty Provides
execute_process(COMMAND rpm --eval %{?dist}
                RESULT_VARIABLE PROC_RESULT
                OUTPUT_VARIABLE EVAL_RESULT
                OUTPUT_STRIP_TRAILING_WHITESPACE)
if (PROC_RESULT EQUAL "0" AND NOT EVAL_RESULT STREQUAL "")
  string (APPEND RPM_RELEASE "%{?dist}")
endif()
set(CPACK_DEBIAN_PACKAGE_RELEASE ${DEBIAN_VERSION})
set(CPACK_RPM_PACKAGE_RELEASE ${RPM_RELEASE})

if(ROCM_USE_DEV_COMPONENT)
    set(CPACK_COMPONENTS_ALL "Unspecified;devel")
    set(CPACK_DEBIAN_DEVEL_PACKAGE_DEPENDS "${CPACK_PACKAGE_NAME} (>= ${CPACK_PACKAGE_VERSION})")
    set(CPACK_DEBIAN_DEVEL_PACKAGE_NAME "${CPACK_PACKAGE_NAME}-dev")
    set(CPACK_DEBIAN_UNSPECIFIED_PACKAGE_RECOMMENDS "${CPACK_PACKAGE_NAME}-dev (>= ${CPACK_PACKAGE_VERSION})")
    set(CPACK_RPM_DEVEL_PACKAGE_REQUIRES "${CPACK_PACKAGE_NAME} >= ${CPACK_PACKAGE_VERSION}")
    execute_process(
        COMMAND rpmbuild --version
        RESULT_VARIABLE PROC_RESULT
        OUTPUT_VARIABLE EVAL_RESULT
        OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    if(PROC_RESULT EQUAL "0" AND NOT EVAL_RESULT STREQUAL "")
        string(REGEX MATCH "[0-9]+\.[0-9]+\.[0-9]+$" RPMBUILD_VERSION "${EVAL_RESULT}")
        if (RPMBUILD_VERSION VERSION_GREATER_EQUAL "4.12.0")
            set(CPACK_RPM_UNSPECIFIED_PACKAGE_SUGGESTS
                "${CPACK_PACKAGE_NAME}-devel >= ${CPACK_PACKAGE_VERSION}")
        endif()
    endif()

    set(CPACK_RPM_MAIN_COMPONENT "Unspecified")
    set(CPACK_RPM_UNSPECIFIED_DISPLAY_NAME "${CPACK_PACKAGE_NAME}")
    set(CPACK_ARCHIVE_COMPONENT_INSTALL ON)
    set(CPACK_DEBIAN_UNSPECIFIED_FILE_NAME
       "${CPACK_PACKAGE_NAME}_${CPACK_PACKAGE_VERSION}-${DEBIAN_VERSION}_${CPACK_DEBIAN_PACKAGE_ARCHITECTURE}.deb")
    set(CPACK_DEBIAN_UNSPECIFIED_PACKAGE_NAME "${CPACK_PACKAGE_NAME}")
endif()

package_set_postinst_prerm(
    "hiprand"
    "${CMAKE_INSTALL_PREFIX}/hiprand/lib"
    "${CMAKE_INSTALL_PREFIX}/hiprand/include"
    "${hiprand_SOVERSION}"
)

# In windows, we require the DLLs to be in the same directory as test executables
if (BUILD_TEST AND WIN32)
  add_custom_command(
      TARGET hiprand 
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy
          $<TARGET_FILE:hiprand>
          ${PROJECT_BINARY_DIR}/test/$<TARGET_FILE_NAME:hiprand>
  )
endif()

# Include CPack to introduce the appropriate targets
include(CPack)