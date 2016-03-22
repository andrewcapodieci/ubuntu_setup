cmake_minimum_required(VERSION 2.8)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
set(BUILD_SHARED_LIBS ON)

#Find package calls
#find_package (PCL 1.7.1 REQUIRED)

project (FileTemplate)

include_directories(${PROJECT_SOURCE_DIR}/include 
    ${CMAKE_INCLUDE_PATH} 
    #Add system/third party headers
    #SYSTEM ${PCL_INCLUDE_DIRS})

#common commands for building c++ executables and libraries
#add_library(FileTemplate src/FileTemplate.cpp)
  
# install libs
#install(TARGETS FileTemplate LIBRARY DESTINATION "${CMAKE_LIBRARY_PATH}/${CMAKE_BUILD_TYPE}")
    
# install header files
install(DIRECTORY "${PROJECT_SOURCE_DIR}/include/${PROJECT_NAME}" DESTINATION "${CMAKE_INCLUDE_PATH}")

add_subdirectory(unittests)
