set(SOURCES
    source/jack/maths/Functions.cpp
    source/jack/maths/Functions.h
    source/jack/maths/Maths.h
)

source_group(
    TREE "${CMAKE_CURRENT_SOURCE_DIR}"
    FILES "${SOURCES}"
)

add_library(maths STATIC "${SOURCES}")

target_include_directories(maths PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/source")

set_target_properties (maths PROPERTIES FOLDER modules)