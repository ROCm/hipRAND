# Package test
cmake_minimum_required(VERSION 3.5.1 FATAL_ERROR)

project(hiprand_package_test CXX)

# CMake modules
list(APPEND CMAKE_PREFIX_PATH ${ROCM_PATH} ${ROCM_PATH}/hip)
list(APPEND CMAKE_MODULE_PATH
    ${HIP_DIR}/cmake ${ROCM_PATH}/hip/cmake # FindHIP.cmake
)

# Find HIP
if (USE_CUDA)
    find_package(hip QUIET CONFIG PATHS ${ROCM_PATH})
    if(NOT hip_FOUND)
        find_package(HIP REQUIRED)
    endif()
else()
  find_package(hip REQUIRED CONFIG PATHS ${ROCM_PATH})
endif()

# Get HIP options
execute_process(
    COMMAND ${HIP_HIPCONFIG_EXECUTABLE} --cpp_config
    OUTPUT_VARIABLE HIP_CPP_CONFIG
    OUTPUT_STRIP_TRAILING_WHITESPACE
    ERROR_STRIP_TRAILING_WHITESPACE
)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${HIP_CPP_CONFIG}")

# CUDA
if (USE_CUDA)
    set(CUDA_USE_STATIC_CUDA_RUNTIME OFF)
    find_package(CUDA REQUIRED)
endif()

# Find hipRAND
find_package(hiprand REQUIRED CONFIG HINTS ${hiprand_DIR} PATHS "${ROCM_PATH}/hiprand")

# TODO: Fix fortran wrapper
# Check if Fortran wrapper is installed
#if(NOT EXISTS "${hiprand_FORTRAN_SRC_DIRS}/hiprand_m.f90")
#    message(FATAL_ERROR "${rocrand_FORTRAN_SRC_DIRS}/hiprand_m.f90 does not exist")
#endif()
#if(NOT EXISTS "${hiprand_FORTRAN_SRC_DIRS}/hip_m.f90")
#    message(FATAL_ERROR "${hiprand_FORTRAN_SRC_DIRS}/hip_m.f90 does not exist")
#endif()
#if(NOT EXISTS "${rocrand_FORTRAN_SRC_DIRS}/rocrand_m.f90")
#    message(FATAL_ERROR "${rocrand_FORTRAN_SRC_DIRS}/rocrand_m.f90 does not exist")
#endif()
#if(NOT EXISTS "${rocrand_FORTRAN_SRC_DIRS}/hip_m.f90")
#    message(FATAL_ERROR "${rocrand_FORTRAN_SRC_DIRS}/hip_m.f90 does not exist")
#endif()

# Get sources
file(GLOB hiprand_pkg_TEST_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/test_hiprand*.cpp)

# Enable testing (ctest)
enable_testing()

# Build
foreach(test_src ${hiprand_pkg_TEST_SRCS})
    get_filename_component(test_name ${test_src} NAME_WE)
    add_executable(${test_name} "${test_src}")
    if(HIP_COMPILER STREQUAL "hcc" OR HIP_COMPILER STREQUAL "clang")
        target_link_libraries(${test_name}
            PRIVATE
                hip::hiprand
                roc::rocrand
                "-L${HIP_ROOT_DIR}/lib -Wl,-rpath,${HIP_ROOT_DIR}/lib"
        )
    else()
        target_link_libraries(${test_name}
            PRIVATE
                hip::hiprand
                ${CUDA_curand_LIBRARY}
                ${CUDA_LIBRARIES}
        )
    endif()
    set_target_properties(${TEST_TARGET}
        PROPERTIES
            RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/test"
    )
    add_relative_test(${test_name} ${test_name})
    if (WIN32 AND NOT DEFINED DLLS_COPIED)
      set(DLLS_COPIED "YES")
      set(DLLS_COPIED ${DLLS_COPIED} PARENT_SCOPE)
      # for now adding in all .dll as dependency chain is not cmake based on win32
      file( GLOB third_party_dlls
      LIST_DIRECTORIES ON
      CONFIGURE_DEPENDS
      ${HIP_DIR}/bin/*.dll
      ${CMAKE_SOURCE_DIR}/rtest.*
      )
      foreach( file_i ${third_party_dlls})
        add_custom_command( TARGET ${test_name} POST_BUILD COMMAND ${CMAKE_COMMAND} ARGS -E copy_if_different ${file_i} ${PROJECT_BINARY_DIR}/test/package )
      endforeach( file_i )
    endif()         
endforeach()
