# specifies the additional compilation options we're using
CXXFLAGS=-Wall -std=c++14

# specifies the libraries we're linking against
LDFLAGS=-lSDL2 -lSDL2_image

# specifies which files to compile as part of the project
SOURCES=main.cpp

# specifies the name of our exectuable
OBJECTS=deck-tracker

# This is the target that compiles our executable
# g++ 02_image_on_screen.cpp -w -lSDL2 -o image_on_screen
all: $(SOURCES)
	$(CXX) $(SOURCES) $(CXXFLAGS) $(LDFLAGS) -o $(OBJECTS)

.PHONY: clean
clean:
	rm -f *.o $(OBJECTS)

.PHONY: run
run:
	@./$(OBJECTS)
