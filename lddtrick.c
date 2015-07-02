#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	if (getenv("LD_TRACE_LOADED_OBJECTS")) {
		printf("Evil code is being executed >:)\n");
	} else {
		printf("Try to run me with ldd.\n");
	}
	return 0;
}
