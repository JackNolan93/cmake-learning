cmake_minimum_required(VERSION 3.2)

project(MyProject)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_subdirectory(app)

add_subdirectory(modules/speak)
add_subdirectory(modules/maths)

