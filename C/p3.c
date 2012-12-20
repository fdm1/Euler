#include <stdio.h>
#include <stdbool.h>

#define X 600851475143
/*************************************
*
*	Find the largest prime factor of the number 600851475143
*
**************************************/

bool isPrime(int number);

int main (void)
{

	int answer = 0;
	long x = X;
	int i = 2;
	//iterate up odd number i until x = 1
	while (x > 1)
	{	
		//check to see if i is prime
		if (isPrime(i))
		{

			//if it's prime AND divides into x, divide out, i becomes latest answer
			if (X % i == 0)
			{
				answer = i;
				x = x / i;
				
			}
		}
			
		if (i <= 2)
			i++;


		if (i >= 3)
			i = i + 2;

	}
	printf("\n\n%d\n", answer);
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

