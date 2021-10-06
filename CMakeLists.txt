cmake_minimum_required(VERSION 3.2)

project(MyProject)

include(CTest)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_subdirectory(app)
add_subdirectory(modules/speak)
add_subdirectory(modules/maths)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME AND BUILD_TESTING)
    add_subdirectory(tests)
endif()

