#include <stdio.h>
#include <stdbool.h>

/********************************************************************************
*																				*
*	Find the sum of all the primes below two million.							*
*																				*
********************************************************************************/

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

int main (void)
{
	int sum = 0;
	for (int i = 0; i < 2000000; i++)
	{
		if (isPrime(i))
		{
			sum += i;
		}
	}	

	printf("%d", sum);
	return;
}
