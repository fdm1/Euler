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
	if ((number % 2 == 0) && (number > 2)) return false;

		//if number > 2 and even -> false
	if ((number % 3 == 0) && (number > 3)) return false;

	//if number > 2 and even -> false
	if ((number % 5 == 0) && (number > 5)) return false;

		//if number > 2 and even -> false
	if ((number % 7 == 0) && (number > 7)) return false;
	if ((number % 11 == 0) && (number > 11)) return false;
	if ((number % 13 == 0) && (number > 13)) return false;
	if ((number % 17 == 0) && (number > 17)) return false;
	if ((number % 19 == 0) && (number > 19)) return false;
	if ((number % 23 == 0) && (number > 23)) return false;
	if ((number % 29 == 0) && (number > 29)) return false;
	if ((number % 31 == 0) && (number > 31)) return false;
	if ((number % 37 == 0) && (number > 37)) return false;
	if ((number % 41 == 0) && (number > 41)) return false;
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

	//generate 1st 100 prime numbers into an array
	//pass the array into the prime checker
	// 	if ((number % prime[i] == 0) && (number > prime[i])) return false;

	while (i < 2000000)
	{

		i++;
		if (isPrime(i))
		{
			//sum += i;
			count++;
			

			if (i != 2)
				i++;
		}
		
	}	
printf("%d\n", count);
	//printf("%lu", sum);
}
