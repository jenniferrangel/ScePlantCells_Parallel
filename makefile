# **************************************************
# Variables to control Makefile operation
CXX= -g++ -fopenmp -static-libstdc++
CXXFLAGS= -Wall -g -O3
#*****************************************************
# Targets needed to bring the executable up to date
all: program 

program:folder main.o coord.o node.o cell.o cell_div.o tissue.o rand.o Signal_Calculator.o common.o MeshCell.o Mesh.o MeshTissue.o 
	$(CXX) $(CXXFLAGS) -o program main.o coord.o node.o cell.o cell_div.o tissue.o rand.o Signal_Calculator.o common.o MeshCell.o Mesh.o MeshTissue.o
folder: 
		mkdir -p ./DataOutput ./Animation
main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

coord.o: coord.cpp
	$(CXX) $(CXXFLAGS) -c coord.cpp

node.o: node.cpp
	$(CXX) $(CXXFLAGS) -c node.cpp

cell.o: cell.cpp
	$(CXX) $(CXXFLAGS) -c cell.cpp
	
cell_div.o: cell_div.cpp
	$(CXX) $(CXXFLAGS) -c cell_div.cpp

tissue.o: tissue.cpp
	$(CXX) $(CXXFLAGS) -c tissue.cpp
	
Signal_Calculator.o: Signal_Calculator.cpp
	$(CXX) $(CXXFLAGS) -c Signal_Calculator.cpp

common.o: common.cpp
	$(CXX) $(CXXFLAGS) -c common.cpp

MeshCell.o: MeshCell.cpp
	$(CXX) $(CXXFLAGS) -c MeshCell.cpp
	
Mesh.o: Mesh.cpp
	$(CXX) $(CXXFLAGS) -c Mesh.cpp

MeshTissue.o: MeshTissue.cpp
	$(CXX) $(CXXFLAGS) -c MeshTissue.cpp

rand.o: rand.cpp
	$(CXX) $(CXXFLAGS) -c rand.cpp

clean: wipe
		rm -rf strain_vec.txt stress_vec.txt *o program

wipe:
