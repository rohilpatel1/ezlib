SRC = $(wildcard src/*.cpp)
OBJS = $(patsubst src/%.cpp,%.o,$(SRC))

.PHONY: all build clean build_test test
all: build clean

ezlib.so: build clean

build: $(OBJS)
	g++ -shared $(OBJS) -o libezlib.so
%.o: src/%.cpp
	g++ -c -fPIC -I./include $^ -o $@
clean:
	rm $(wildcard build/*.o)

test: build_test
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(realpath .): && ./test

build_test: ezlib.so
	g++ tests/test.cpp -I./include -L. -o ./test -lezlib

install: build
	cp libezlib.so /usr/local/lib/libezlib.so
	cp -a include/. /usr/local/include
