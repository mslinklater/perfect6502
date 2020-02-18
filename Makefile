OBJS=core/perfect6502.o core/netlist_sim.o
OBJS_CBMBASIC=$(OBJS) cbmbasic.o runtime.o runtime_init.o plugin.o console.o emu.o
OBJS_MEASURE=$(OBJS) measure.o
OBJS_UNITTEST=$(OBJS) unittest/main.o

CFLAGS=-Werror -Wall -O0 -g -I. -Icore
CXXFLAGS=-Werror -Wall -O0 -g -I. -Icore
CC=clang
CXX=clang

all: cbmbasic utest

cbmbasic: $(OBJS_CBMBASIC)
	$(CC) -o cbmbasic $(OBJS_CBMBASIC)

measure: $(OBJS_MEASURE)
	$(CC) -o measure $(OBJS_MEASURE)

utest: $(OBJS_UNITTEST)
	$(CC) -o utest $(OBJS_UNITTEST)

clean:
	rm -f *.o core/*.o unittest/*.o cbmbasic utest measure

