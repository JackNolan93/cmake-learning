add_executable(mathsTests MathsTests.cpp)
target_link_libraries(mathsTests PRIVATE maths)

add_executable(speakTests speakTests.cpp)
target_link_libraries(speakTests PRIVATE speak)

add_test(MathsTests mathsTests)
add_test(SpeakTests speakTests)
