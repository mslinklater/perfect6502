OBJS=perfect6502.o netlist_sim.o
OBJS_CBMBASIC=$(OBJS) cbmbasic.o runtime.o runtime_init.o plugin.o console.o emu.o
OBJS_MEASURE=$(OBJS) measure.o

CFLAGS=-Werror -Wall -O0 -g
CC=clang

all: cbmbasic measure

cbmbasic: $(OBJS_CBMBASIC)
	$(CC) -o cbmbasic $(OBJS_CBMBASIC)

measure: $(OBJS_MEASURE)
	$(CC) -o measure $(OBJS_MEASURE)

clean:
	rm -f *.o cbmbasic measure

