#include <stdio.h>
#include <stdbool.h>

/********************************************************************
*																	*
*	Find the 10,001st prime number									*
*																	*
********************************************************************/

bool isPrime(int number);

int main (void)
{
	int counter = 0;
	int i = 2;

	while (counter < 10002)
	{
		if (isPrime(i))
			{
				counter++;

				if (counter == 10001)
					printf("\n\n%d\n", i);
			}
		i++;
	}
}

bool isPrime(int number)
{
	int j = 2;

	if (j > number)
		return false;

	while(j < number)
	{
		if (number % j == 0)
			return false;

		j++;
	}

	if (j == number)
		return true;
}