#include <stdio.h>

int main(int argc, char const *argv[])
{
	union data{
		int i;
		char c;
	} data;

	data.i = 3;
	if (data.c == 3)
	{
		printf("gay\n");
	}
	return 0;
}