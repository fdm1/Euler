#include <stdio.h>

/************************************************
*												*
*	Find the smallest positive number 			*
*	that is evenly divisible by all of 			*
*	the numbers from 1 to 20					*
*												*
************************************************/

int main (void)
{
	int x = 20;

	while (x)
	{
		for (int i = 0; i < 20; i++)
		{
			if (x % (i + 1) != 0)
				break;

			if ((i == 19) && (x % (i+1) == 0))
			{
				printf("\n%d\n", x);
				return 0;			
			}	
		}	
	x++;
	}

}