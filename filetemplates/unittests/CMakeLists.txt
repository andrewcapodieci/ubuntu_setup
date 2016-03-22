enable_testing()

cmake_minimum_required(VERSION 2.8)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
set(BUILD_SHARED_LIBS ON)

#find_package (PCL 1.7.1 REQUIRED)

project (unittests)

link_directories(${PROJECT_SOURCE_DIR}/lib ${CMAKE_LIBRARY_PATH})
include_directories(${PROJECT_SOURCE_DIR}/include 
    ${CMAKE_INCLUDE_PATH} 
    #SYSTEM ${PCL_INCLUDE_DIRS})

find_package (Boost 1.49.0 COMPONENTS system filesystem chrono unit_test_framework REQURIED)

include_directories(${Boost_INCLUDE_DIRS})

file(GLOB TEST_SRCS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} tests/*.cpp)

foreach(testSrc ${TEST_SRCS})
    get_filename_component(testName ${testSrc} NAME_WE)

    add_executable(${testName} ${testSrc})
    target_link_libraries(${testName} ${Boost_SYSTEM_LIBRARY} ${Boost_FILESYSTEM_LIBRARY} ${Boost_CHRONO_LIBRARY} ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY} )
    set_target_properties(${testName}   PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin)

    add_test(   NAME                ${testName}
                WORKING_DIRECTORY   ${CMAKE_CURRENT_SOURCE_DIR}/bin
                COMMAND             ${CMAKE_CURRENT_SOURCE_DIR}/bin/${testName})
endforeach(testSrc)
