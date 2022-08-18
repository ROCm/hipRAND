# hipRAND library
# Get hipRAND sources
if (BUILD_WITH_LIB STREQUAL "CUDA")
    set(hipRAND_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/nvcc_detail/hiprand.cpp)
else()
    set(hipRAND_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/src/hcc_detail/hiprand.cpp)
endif()

# Configure a header file to pass the hipRAND version
configure_file(
    "${PROJECT_SOURCE_DIR}/library/include/hiprand/hiprand_version.h.in"
    "${PROJECT_BINARY_DIR}/library/include/hiprand/hiprand_version.h"
    @ONLY
)

if(BUILD_FILE_REORG_BACKWARD_COMPATIBILITY AND NOT WIN32)
    rocm_wrap_header_dir(
        "${PROJECT_SOURCE_DIR}/library/include/hiprand"
        GUARDS SYMLINK WRAPPER
        WRAPPER_LOCATIONS include hiprand/include
        OUTPUT_LOCATIONS library/include library/hiprand/include
        HEADER_LOCATION include/hiprand
        PATTERNS *.h *.hpp
    )
    rocm_wrap_header_file(
        hiprand_version.h
        GUARDS SYMLINK WRAPPER
        WRAPPER_LOCATIONS include hiprand/include
        OUTPUT_LOCATIONS library/include library/hiprand/include
        HEADER_LOCATION include/hiprand
    )
endif()

# Build
if (BUILD_WITH_LIB STREQUAL "CUDA")
    set_source_files_properties(${hipRAND_SRCS} PROPERTIES LANGUAGE CUDA)
    set(CUDA_HOST_COMPILER ${CMAKE_CXX_COMPILER})
endif()
add_library(hiprand ${hipRAND_SRCS})
add_library(hip::hiprand ALIAS hiprand)

# Add interface include directory so that other CMake applications can maintain previous behaviour.
# This will be removed with upcoming packaging changes.
target_include_directories(hiprand INTERFACE $<INSTALL_INTERFACE:$<INSTALL_PREFIX>/include/hiprand>)

if (BUILD_WITH_LIB STREQUAL "CUDA")
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
        INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/hiprand/lib"
)

rocm_install(
    TARGETS hiprand
    INCLUDE 
        "${PROJECT_SOURCE_DIR}/library/include"
        "${PROJECT_BINARY_DIR}/library/include"
    EXPORT hiprand-targets
)

set(FORTRAN_SRCS_INSTALL_DIR "${CMAKE_INSTALL_PREFIX}/hiprand/src/fortran")
configure_file(
    src/hiprand-fortran-config.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/hiprand-fortran-config.cmake
)

if (BUILD_WITH_LIB STREQUAL "CUDA")
    rocm_export_targets(
        TARGETS hip::hiprand
        NAME hiprand
        NAMESPACE hip::
        INCLUDE "${CMAKE_CURRENT_BINARY_DIR}/hiprand-fortran-config.cmake"
    )
else()
    rocm_export_targets(
        TARGETS hip::hiprand
        NAME hiprand
        NAMESPACE hip::
        DEPENDS PACKAGE hip
        INCLUDE "${CMAKE_CURRENT_BINARY_DIR}/hiprand-fortran-config.cmake"
    )
endif()

if(BUILD_FILE_REORG_BACKWARD_COMPATIBILITY AND NOT WIN32)
    rocm_install(
        DIRECTORY "${PROJECT_BINARY_DIR}/library/hiprand"
        DESTINATION "."
    )
endif()

# install library to C:\hipSDK\bin
if (WIN32)
  install (TARGETS hiprand DESTINATION "${CMAKE_INSTALL_PREFIX}/bin")
  if (BUILD_TEST)
      install (TARGETS hiprand DESTINATION "${CMAKE_BINARY_DIR}/test")
  endif()
endif()

# Fortran wrappers for hipRAND and rocRAND
if(BUILD_FORTRAN_WRAPPER)
    add_subdirectory(src/fortran)
endif()

if(NOT HIPRAND_SUBMODULE)
    set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/../LICENSE.txt")
    if(WIN32)
        set(CPACK_SOURCE_GENERATOR "ZIP")
        set(CPACK_GENERATOR "ZIP")
        set(CMAKE_INSTALL_PREFIX "C:/hipSDK" CACHE PATH "Install path" FORCE)
        set(INSTALL_PREFIX "C:/hipSDK")
        set(CPACK_SET_DESTDIR OFF)
        set(CPACK_PACKAGE_INSTALL_DIRECTORY "C:/hipSDK")
        set(CPACK_PACKAGING_INSTALL_PREFIX "")
        set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY OFF)
    else()
        if(NOT CPACK_PACKAGING_INSTALL_PREFIX)
            set(CPACK_PACKAGING_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")
        endif()
    endif()

    if( HIP_RUNTIME_LOWER STREQUAL "rocclr" )
        rocm_package_add_dependencies("hip-rocclr >= 3.5.0")
    elseif( HIP_RUNTIME STREQUAL "cuda" )
        rocm_package_add_dependencies("hip-nvcc >= 3.5.0")
    endif( )
    rocm_package_add_dependencies("rocrand >= ${hipRAND_VERSION}")

    set(CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION "\${CPACK_PACKAGING_INSTALL_PREFIX}" "\${CPACK_PACKAGING_INSTALL_PREFIX}/include")

    if (BUILD_WITH_LIB STREQUAL "CUDA")
        set(package_name hiprand-alt)
    else()
        set(package_name hiprand)
    endif()

    set(HIPRAND_CONFIG_DIR "\${CPACK_PACKAGING_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}" CACHE PATH "Path placed into ldconfig file")

    rocm_create_package(
        NAME ${package_name}
        DESCRIPTION "Radeon Open Compute RAND library"
        MAINTAINER "hipRAND Maintainer <hiprand-maintainer@amd.com>"
        LDCONFIG
        LDCONFIG_DIR ${HIPRAND_CONFIG_DIR}
    )
else()
    rocm_join_if_set(", " CPACK_DEBIAN_RUNTIME_PACKAGE_PROVIDES "hiprand (= ${hipRAND_VERSION})")
    rocm_join_if_set(", " CPACK_RPM_RUNTIME_PACKAGE_PROVIDES "hiprand = ${hipRAND_VERSION}")
    rocm_join_if_set(", " CPACK_DEBIAN_DEVEL_PACKAGE_PROVIDES "hiprand-dev (= ${hipRAND_VERSION})")
    rocm_join_if_set(", " CPACK_RPM_DEVEL_PACKAGE_PROVIDES "hiprand-devel = ${hipRAND_VERSION}")
endif()
