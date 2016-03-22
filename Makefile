
TOOLS = GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno
CC = g++
CFLAGS = -O3 -Wall

all: $(TOOLS)

$(TOOLS):
	$(CC) $(CFLAGS) $@.cpp -o $@

test:
	@cd examples/; bash test.sh 2> test.log; cd ../

clean:
	@rm -rf *o $(TOOLS) examples/testA.*
