CC := g++
C_FLAGS := -Wall -Wextra 
TARGET := test_prog
BIN_DEPS := test.c libpower.so
DY_SOURCE := ./source/libpower.c
DY_HEADER := ./include/libpower.h 

.PHONY: clean run

$(TARGET): $(BIN_DEPS)
	$(CC) -L. -lpower test.c -o $(TARGET)

libpower.so: $(DY_SOURCE) $(DY_HEADER)
	$(CC) -fPIC -shared $< -o $@

run: $(TARGET)
	LD_LIBRARY_PATH=. ./$(TARGET)

clean:
	-rm *.so
	-rm test_prog
