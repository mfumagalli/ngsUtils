
TOOLS = GetSubSfs GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno GetSwitchedSfs
CC = g++
CFLAGS = -O3 -Wall

all: $(TOOLS)

$(TOOLS):
	$(CC) $(CFLAGS) $@.cpp -o $@

test:
	@cd examples/; sh ./test.sh 2> /dev/null; cd ../

clean:
	@rm -rf *o GetSubSfs GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno GetSwitchedSfs examples/testA.*
