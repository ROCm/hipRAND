# MIT License
#
# Copyright (c) 2018-2023 Advanced Micro Devices, Inc. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Dependencies

# HIP dependency is handled earlier in the project cmake file
# when VerifyCompiler.cmake is included.

# Find or download/install rocm-cmake project
find_package(ROCM 0.7.3 QUIET CONFIG PATHS ${ROCM_PATH})
if(NOT ROCM_FOUND)
    set(PROJECT_EXTERN_DIR "${CMAKE_CURRENT_BINARY_DIR}/deps")
    file( TO_NATIVE_PATH "${PROJECT_EXTERN_DIR}" PROJECT_EXTERN_DIR_NATIVE)
    set(rocm_cmake_tag "master" CACHE STRING "rocm-cmake tag to download")
    file(
        DOWNLOAD https://github.com/RadeonOpenCompute/rocm-cmake/archive/${rocm_cmake_tag}.tar.gz
        ${PROJECT_EXTERN_DIR}/rocm-cmake-${rocm_cmake_tag}.tar.gz
        STATUS rocm_cmake_download_status LOG rocm_cmake_download_log
    )
    list(GET rocm_cmake_download_status 0 rocm_cmake_download_error_code)
    if(rocm_cmake_download_error_code)
        message(FATAL_ERROR "Error: downloading "
            "https://github.com/RadeonOpenCompute/rocm-cmake/archive/${rocm_cmake_tag}.zip failed "
            "error_code: ${rocm_cmake_download_error_code} "
            "log: ${rocm_cmake_download_log} "
        )
    endif()

    execute_process(
        COMMAND ${CMAKE_COMMAND} -E tar xzvf ${PROJECT_EXTERN_DIR}/rocm-cmake-${rocm_cmake_tag}.tar.gz
        WORKING_DIRECTORY ${PROJECT_EXTERN_DIR}
    )
    execute_process(
        COMMAND ${CMAKE_COMMAND} -S ${PROJECT_EXTERN_DIR}/rocm-cmake-${rocm_cmake_tag} -B ${PROJECT_EXTERN_DIR}/rocm-cmake-${rocm_cmake_tag}/build
        WORKING_DIRECTORY ${PROJECT_EXTERN_DIR}
    )
    execute_process(
        COMMAND ${CMAKE_COMMAND} --install ${PROJECT_EXTERN_DIR}/rocm-cmake-${rocm_cmake_tag}/build --prefix ${PROJECT_EXTERN_DIR}/rocm
        WORKING_DIRECTORY ${PROJECT_EXTERN_DIR} )
    if(rocm_cmake_unpack_error_code)
        message(FATAL_ERROR "Error: unpacking ${CMAKE_CURRENT_BINARY_DIR}/rocm-cmake-${rocm_cmake_tag}.zip failed")
    endif()
    find_package(ROCM 0.7.3 REQUIRED CONFIG PATHS ${PROJECT_EXTERN_DIR})
endif()

include(ROCMSetupVersion)
include(ROCMCreatePackage)
include(ROCMInstallTargets)
include(ROCMPackageConfigHelpers)
include(ROCMInstallSymlinks)
include(ROCMCheckTargetIds)
include(ROCMUtilities)
include(ROCMClients)
include(ROCMHeaderWrapper)

if (NOT BUILD_WITH_LIB STREQUAL "CUDA")
  set( AMDGPU_TARGETS "all" CACHE STRING "Compile for which gpu architectures?")
  # Set the AMDGPU_TARGETS with backward compatiblity
  rocm_check_target_ids(DEFAULT_AMDGPU_TARGETS
      TARGETS "gfx803;gfx900:xnack-;gfx906:xnack-;gfx908:xnack-;gfx90a:xnack-;gfx90a:xnack+;gfx1030;gfx1100;gfx1101;gfx1102"
  )
  if (AMDGPU_TARGETS)
      if( AMDGPU_TARGETS STREQUAL "all" )
        set( gpus "${DEFAULT_AMDGPU_TARGETS}")
      else()
        set( gpus "${AMDGPU_TARGETS}")
      endif()
      # must FORCE set this AMDGPU_TARGETS before any find_package( hip ...), in this file
      # to override CACHE var and set --offload-arch flags via hip-config.cmake hip::device dependency
      set( AMDGPU_TARGETS "${gpus}" CACHE STRING "AMD GPU targets to compile for" FORCE )
  endif()
endif()

# For downloading, building, and installing required dependencies
include(cmake/DownloadProject.cmake)

# NOTE: HIPCC includes the default ROCm install directory as search directory for header files. This makes it possible
#       that different rocRAND headers are found than those of the package found with find_package.
if (NOT BUILD_WITH_LIB STREQUAL "CUDA")
    # Search for the the system-installed package, unless this is explicitly disabled.
    # Explicitly disabling is required, else the header will still be picked up via HIPCC's include.
    if (NOT CMAKE_NO_SYSTEM_FROM_IMPORTED)
        find_package(rocrand QUIET CONFIG PATHS ${ROCM_PATH} NO_DEFAULT_PATH)
        set(EXPECTED_ROCRAND_DIR ${ROCM_PATH})
    endif ()
    # If rocRAND is not found, search the manually specified location, if specified by defining ROCRAND_PATH.
    if (NOT rocrand_FOUND AND DEFINED ROCRAND_PATH)
        find_package(rocrand QUIET CONFIG PATHS ${ROCRAND_PATH} NO_DEFAULT_PATH)
        set(EXPECTED_ROCRAND_DIR ${ROCRAND_PATH})
    endif ()
    # If rocRAND is not found, download and install rocRAND, if specified by DOWNLOAD_ROCRAND.
    if (NOT rocrand_FOUND AND DOWNLOAD_ROCRAND)
        set(ROCRAND_ROOT "${CMAKE_CURRENT_BINARY_DIR}/deps/rocrand" CACHE PATH "Path to downloaded rocRAND install.")
        download_project(
                PROJ rocrand
                GIT_REPOSITORY https://github.com/ROCmSoftwarePlatform/rocRAND.git
                GIT_TAG develop
                GIT_SHALLOW TRUE
                INSTALL_DIR ${ROCRAND_ROOT}
                CMAKE_ARGS -DBUILD_TEST=OFF -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_PREFIX_PATH=/opt/rocm
                -DCMAKE_CXX_COMPILER=hipcc
                LOG_DOWNLOAD TRUE
                LOG_CONFIGURE TRUE
                LOG_BUILD TRUE
                LOG_INSTALL TRUE
                BUILD_PROJECT TRUE
                UPDATE_DISCONNECTED TRUE # Never update automatically from the remote repository
        )
        # search only the install location of the downloaded rocrand
        find_package(rocrand CONFIG PATHS ${ROCRAND_ROOT} NO_DEFAULT_PATH)
        set(EXPECTED_ROCRAND_DIR ${ROCRAND_ROOT})
    endif ()
    if (NOT rocrand_FOUND)
        message(STATUS "No route for including rocRAND is provided. Either install on the default path \
        ("${ROCM_PATH}"), point to a manual install with ROCRAND_PATH, or pass DOWNLOAD_ROCRAND. If either one of the
        latter two options is used, rocRAND must not be installed in the default path,
        or CMAKE_NO_SYSTEM_FROM_IMPORTED must be specified.")
    endif ()
    # Based on the flow above, make a final find_package call with REQUIRED to issue a diagnostic.
    find_package(rocrand CONFIG REQUIRED PATHS ${EXPECTED_ROCRAND_DIR} NO_DEFAULT_PATH)
    message(STATUS "Found rocRAND: ${rocrand_DIR}")
endif ()

# Fortran Wrapper
if(BUILD_FORTRAN_WRAPPER)
    enable_language(Fortran)
endif()

# Test dependencies
if(BUILD_TEST)
  # NOTE: Google Test has created a mess with legacy FindGTest.cmake and newer GTestConfig.cmake
  #
  # FindGTest.cmake defines:   GTest::GTest, GTest::Main, GTEST_FOUND
  #
  # GTestConfig.cmake defines: GTest::gtest, GTest::gtest_main, GTest::gmock, GTest::gmock_main
  #
  # NOTE2: Finding GTest in MODULE mode, one cannot invoke find_package in CONFIG mode, because targets
  #        will be duplicately defined.
  if(NOT DEPENDENCIES_FORCE_DOWNLOAD)
    # Google Test (https://github.com/google/googletest)
    find_package(GTest QUIET)
  endif()

  if(NOT TARGET GTest::GTest AND NOT TARGET GTest::gtest)
    message(STATUS "GTest not found or force download GTest on. Downloading and building GTest.")
    set(GTEST_ROOT ${CMAKE_CURRENT_BINARY_DIR}/deps/gtest CACHE PATH "")
    download_project(
      PROJ                googletest
      GIT_REPOSITORY      https://github.com/google/googletest.git
      GIT_TAG             release-1.11.0
      INSTALL_DIR         ${GTEST_ROOT}
      CMAKE_ARGS          -DBUILD_GTEST=ON -DINSTALL_GTEST=ON -Dgtest_force_shared_crt=ON -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
      LOG_DOWNLOAD        TRUE
      LOG_CONFIGURE       TRUE
      LOG_BUILD           TRUE
      LOG_INSTALL         TRUE
      BUILD_PROJECT       TRUE
      UPDATE_DISCONNECTED TRUE # Never update automatically from the remote repository
    )
    list( APPEND CMAKE_PREFIX_PATH ${GTEST_ROOT} )
    find_package(GTest CONFIG REQUIRED PATHS ${GTEST_ROOT})
  endif()
endif()


