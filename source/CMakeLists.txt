add_library(Speak STATIC NumToText.cpp "${MyProject_SOURCE_DIR}/include/Speak/NumToText.h")

target_include_directories(Speak PUBLIC ../include)
