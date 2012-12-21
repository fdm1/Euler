#include <stdio.h>

/********************************************************************
*																	*
*	Find the difference between the sum of the squares of the 		*
*   first one hundred natural numbers and the square of the sum.	*				*
*																	*
********************************************************************/

int main (void)
{
	int individual = 0, sum = 0;

	for (int i = 0; i < 100; i++)
	{
		individual = individual + ((i + 1) * (i + 1));
		sum = sum + (i + 1);
	}

	printf("\n\n%d\n", ((sum * sum) - individual));
}
