
TOOLS = GetSubSfs GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno GetSwitchedSfs
CC = g++
CFLAGS = -O3 -Wall

all: $(TOOLS)

$(TOOLS):
	$(CC) $(CFLAGS) $@.cpp -o bin/$@

test:
	@cd examples/; sh ./test.sh 2> /dev/null; cd ../

clean:
	@rm -rf *o bin/GetSubSfs bin/GetSubSim bin/GetSubGeno bin/GetSwitchedGeno bin/GetMergedGeno bin/GetSwitchedSfs examples/testA.*
