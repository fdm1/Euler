#include <stdio.h>

/*************************************
*
*	Find the sum of all the multiples of 3 or 5 below 1000
*
**************************************/


int main (void)
{
	int answer = 0;
	for (int i = 0; i<1000; i = i + 3)
		answer += i;

	for (int i = 0; i<1000; i = i + 5)
	{
		if (i%3 != 0)
			answer += i;
	}

	printf("%d\n", answer);
}