SRC = $(wildcard src/*.cpp)

.PHONY: all build clean build_test test
all: build clean

ezlib.so: build clean

build:
	mkdir -p build
	g++ -c -fPIC -I./include $(SRC) -o build/ezlib.o
	g++ -shared $(wildcard build/*.o) -o build/libezlib.so

clean:
	rm $(wildcard build/*.o)

test: build_test
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(realpath ./build): && ./build/test

build_test: ezlib.so
	g++ tests/test.cpp -I./include -L./build -o ./build/test -lezlib

install: build
	cp build/libezlib.so /usr/local/lib/libezlib.so
	cp -a include/. /usr/local/include
