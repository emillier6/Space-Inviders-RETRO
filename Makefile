CXX := g++
CPPFLAGS := -DGLEW_NO_GLU
CXXFLAGS := -Wall -std=c++11 -O0 -g
LDFLAGS := -L/usr/local/lib64 -lglfw -lGLEW -lGL -Wl,-rpath,/usr/local/lib64

TARGET := main
SRC := main.cpp

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)
