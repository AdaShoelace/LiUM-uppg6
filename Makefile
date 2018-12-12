TARGET := program
BIN_DIR := target/bin
CC := clang
BIN_FLAGS := -Wall -Wextra 
LIB_FLAGS := $(BIN_FLAGS) -shared
DYLIBS := libpower.so libcomponent.so libresistance.so

# kopiera och byt till rätt sökväg
LIB_POWER_HEADERS := lib/libpower/include/libpower.h
# kopiera och byt till rätt sökväg
LIB_POWER_SOURCES := lib/libpower/source/libpower.c

.PHONY: clean

$(TARGET): $(DYLIBS)
	$(CC) -o $(TARGET) source/main.c $^
	mv $(TARGET) $(BIN_DIR)/

libpower.so: libpower.o
	$(CC) -c $(LIB_FLAGS) $< -o $@

libpower.o: $(LIB_POWER_HEADERS) $(LIB_POWER_SOURCES)
	$(CC) -c $< -o $@

clean:
	-rm *.o
	-rm $(BIN_DIR)/$(TARGET)


