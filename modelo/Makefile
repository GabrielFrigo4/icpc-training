.POSIX:

CXX      = c++
CXXFLAGS = -O3 -Wall -Wextra -Wconversion -Wshadow -std=c++23
DBGFLAGS = -fsanitize=address,undefined -g -Wall -Wshadow -std=c++23

.SUFFIXES:
.SUFFIXES: .cpp .debug

.cpp:
	$(CXX) $(CXXFLAGS) $< -o $@

.cpp.debug:
	$(CXX) $(DBGFLAGS) $< -o $@

clean:
	rm -f [A-Z] *.debug
