SRC = $(wildcard ../src/*.cpp)
OBJS = $(wildcard build/*.o)
.PHONY: all build clean build_test test
all: build clean

ezlib.so: build clean

build:
	mkdir -p build
	cd build && g++ -c -I../include $(SRC)
	g++ -fPIC -shared $(OBJS) -o build/ezlib.so
clean:
	rm $(OBJS)
test: build_test
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(realpath ./build/ezlib.so): && ./build/test
build_test: ezlib.so
	g++ tests/test.cpp -o ./build/test
