set(APPLICATION_SOURCES
    app.cpp
)

add_executable(Application app.cpp)

set(JACK_LIBRARIES
    speak
    maths
)

target_link_libraries(Application PRIVATE "${JACK_LIBRARIES}")
