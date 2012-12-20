#include <stdio.h>

/*************************************
*
*	find the sum of the evem terms in the 
*	Fibonacci sequence whose values do not exceed four million
*
**************************************/


int main (void)
{
	int answer = 0;
	int a = 0;
	int b = 1;
	int c = 0;

	while (c < 4000000)
	{
		c = a + b;
		a = b;
		b = c;
		if (c % 2 == 0)
			answer += c;
	}	

	printf("%d\n", answer);
}