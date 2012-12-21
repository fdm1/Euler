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

	//if number is 2 -> true
	if (j == number)
		return true;

	//if number is less than 2 -> false
	if (j > number)
		return false;

	//if number > 2 and even -> false
	if ((number % 2 == 0) && (number > 2))
		return false;

	//if number is less than j, increment to 3, and then up by odd numbers. If divisible -> false
	while (j <= number)
	{

		j++;
		if ((number % j == 0) && (number > j))
			return false;

		if (number == j)
			return true;

		j++;
	}

}

int main (void)
{
	long sum = 0;
	int i = 1;
	int count = 0;
	while (i < 2000000)
	{

		i++;
		if (isPrime(i))
		{
			//sum += i;
			count++;
			printf("%d\n", count);

			if (i != 2)
				i++;
		}
		
	}	

	//printf("%lu", sum);
}
