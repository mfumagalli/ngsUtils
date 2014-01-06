
TOOLS = GetSubSfs GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno GetSwitchedSfs
CC = g++
CFLAGS = -O3 -Wall

all: $(TOOLS)

$(TOOLS):
	$(CC) $(CFLAGS) $@.cpp -o $@

test:
	@echo "ngsUtils: test scripts not implemented yet."

clean:
	@rm -rf *o GetSubSfs GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno GetSwitchedSfs
