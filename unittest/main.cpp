#include <stdio.h>
#include "../core/perfect6502.h"

int main(int argv, char* argc[])
{
	void* state = initAndResetChip();
	state = nullptr;
	return 0;
}