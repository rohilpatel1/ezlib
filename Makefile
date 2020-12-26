start:
	g++ -std=c++17 main.cpp && ./a.out

build:
	g++ -std=c++17

run: 
	./a.out

clean:
	rm ./a.out