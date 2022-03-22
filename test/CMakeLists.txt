# Tests

function(add_relative_test test_name test_target)
    get_target_property(EXE_PATH ${test_target} RUNTIME_OUTPUT_DIRECTORY)
    if(EXE_PATH STREQUAL "EXE_PATH-NOTFOUND")
        set(EXE_PATH ".")
    endif()
    get_filename_component(EXE_PATH "${EXE_PATH}" ABSOLUTE BASE_DIR "${CMAKE_CURRENT_BINARY_DIR}")
    get_target_property(EXE_NAME ${test_target} RUNTIME_OUTPUT_NAME)
    if(EXE_NAME STREQUAL "EXE_NAME-NOTFOUND")
        get_target_property(EXE_NAME ${test_target} OUTPUT_NAME)
        if(EXE_NAME STREQUAL "EXE_NAME-NOTFOUND")
            set(EXE_NAME "${test_target}")
        endif()
    endif()
    file(RELATIVE_PATH rel_path "${CMAKE_CURRENT_BINARY_DIR}" "${EXE_PATH}/${EXE_NAME}")
    add_test(NAME "${test_name}" COMMAND "./${rel_path}")
endfunction()

# Get hipRAND tests source files
file(GLOB hipRAND_TEST_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/test_hiprand*.cpp)

# Build hipRAND tests
foreach(test_src ${hipRAND_TEST_SRCS})
    get_filename_component(test_name ${test_src} NAME_WE)
    add_executable(${test_name} ${test_src})
    # nvcc/CUDA
    if (BUILD_WITH_LIB STREQUAL "CUDA")
      set_source_files_properties(${test_name}
        PROPERTIES
          LANGUAGE CUDA
          CUDA_STANDARD 14
      )
      set(CUDA_HOST_COMPILER ${CMAKE_CXX_COMPILER})
    endif()
    target_include_directories(${test_name}
        PUBLIC
            $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/library/src>
    )
    if(TARGET GTest::GTest)
        target_link_libraries(${test_name}
            GTest::GTest
            GTest::Main
        )
    else()
        target_link_libraries(${test_name}
            GTest::gtest
            GTest::gtest_main
        )
    endif()
    if (BUILD_WITH_LIB STREQUAL "CUDA")
        target_link_libraries(${test_name}
            hiprand
            ${CUDA_curand_LIBRARY}
        )
    else()
        target_link_libraries(${test_name}
            hiprand
            roc::rocrand
            hip::device
        )
    endif()
    set_target_properties(${test_name}
        PROPERTIES
            RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/test"
    )
    add_relative_test(${test_name} ${test_name})
    rocm_install(TARGETS ${test_name} COMPONENT tests)
    if (WIN32 AND NOT DEFINED DLLS_COPIED)
      set(DLLS_COPIED "YES")
      set(DLLS_COPIED ${DLLS_COPIED} PARENT_SCOPE)
      # for now adding in all .dll as dependency chain is not cmake based on win32
      if(NOT HIPRAND_SUBMODULE)
        set(ROCRAND_DLLS "${ROCRAND_PATH}/bin/rocrand.dll")
      endif()
      file( GLOB third_party_dlls
      LIST_DIRECTORIES ON
      CONFIGURE_DEPENDS
      ${HIP_DIR}/bin/*.dll
      ${HIP_DIR}/bin/hipinfo.exe
      ${ROCRAND_DLLS}
      ${CMAKE_SOURCE_DIR}/rtest.*
      )
      foreach( file_i ${third_party_dlls})
        add_custom_command( TARGET ${test_name} POST_BUILD COMMAND ${CMAKE_COMMAND} ARGS -E copy_if_different ${file_i} ${CMAKE_BINARY_DIR}/test )
      endforeach( file_i )
    endif()       
endforeach()

# Fortran Wrapper Tests
if(BUILD_FORTRAN_WRAPPER)
    add_subdirectory(fortran)
endif()

# Checks for simple linkage problems
add_subdirectory(linkage)
