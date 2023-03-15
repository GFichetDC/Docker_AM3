CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic -std=c++17

all: main

main: main.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f main.o main
