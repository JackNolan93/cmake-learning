set(SOURCES
    source/jack/speak/NumToText.cpp
    source/jack/speak/NumToText.h
    source/jack/speak/Speak.h
)

source_group(
    TREE "${CMAKE_CURRENT_SOURCE_DIR}"
    FILES "${SOURCES}"
)

add_library(speak STATIC "${SOURCES}")

target_include_directories(speak PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/source")

set_target_properties (speak PROPERTIES FOLDER modules)
