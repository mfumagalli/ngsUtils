
TOOLS = GetSubSim GetSubGeno GetSwitchedGeno GetMergedGeno
CC?=gcc
CXX?=g++
CFLAGS = -O3 -Wall

all: $(TOOLS)

$(TOOLS):
	$(CXX) $(CFLAGS) $@.cpp -o $@

test:
	@cd examples/; bash test.sh 2> test.log; cd ../

clean:
	@rm -rf *o $(TOOLS) examples/testA.*
