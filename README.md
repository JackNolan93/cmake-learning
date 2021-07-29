# cmake-learning

To build run this command from the root directory:
make -C build

To Build for xcode run:
cmake -S . -B xbuild -G Xcode

To Build for visual studio run:
cmake -S . -B vsbuild -G "Visual Studio <version> <year>" -A x64
