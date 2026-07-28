CXX = g++-14
CXXFLAGS = -std=c++20 -fmodules-ts -Wall -g

all:
	$(CXX) $(CXXFLAGS) -c -x c++-system-header iostream
	$(CXX) $(CXXFLAGS) -c -x c++-system-header vector
	$(CXX) $(CXXFLAGS) -c -x c++-system-header sstream
	$(CXX) $(CXXFLAGS) -c -x c++-system-header random
	$(CXX) $(CXXFLAGS) -c -x c++-system-header fstream
	$(CXX) $(CXXFLAGS) -c -x c++-system-header cstdlib
	$(CXX) $(CXXFLAGS) -c -x c++-system-header string

	$(CXX) $(CXXFLAGS) -c window.cc
	$(CXX) $(CXXFLAGS) -c window-impl.cc
	$(CXX) $(CXXFLAGS) -c link.cc
	$(CXX) $(CXXFLAGS) -c link-impl.cc
	$(CXX) $(CXXFLAGS) -c ability.cc
	$(CXX) $(CXXFLAGS) -c player.cc
	$(CXX) $(CXXFLAGS) -c player-impl.cc
	$(CXX) $(CXXFLAGS) -c tile.cc
	$(CXX) $(CXXFLAGS) -c tile-impl.cc
	$(CXX) $(CXXFLAGS) -c display.cc
	$(CXX) $(CXXFLAGS) -c display-impl.cc
	$(CXX) $(CXXFLAGS) -c main.cc


	g++-14 -std=c++20 *.o -lX11 -o RAIInet

clean:
	rm -f *.o RAIInet
	rm -rf gcm.cache

