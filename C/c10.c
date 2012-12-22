#include <stdio.h>
#include <stdbool.h>

//size of the prime array
#define SMALL 1000
#define BIG 50000

/********************************************************************************
*																				*
*	Find the sum of all the primes below two million.							*
*																				*
********************************************************************************/

bool isPrimeSmall(int number);
bool isPrimeLarge(int number, int primeArray[], int size);

int main (void)
{

//create array of first SMALL prime numbers
	unsigned int counter = 0, number = 2;
	int smallPrimes[SMALL];
	int bigPrimes[BIG];

	while (counter < SMALL)
	{
		if (isPrimeSmall(number))
			{
				smallPrimes[counter] = number;
				counter++;
				printf("%d\n", number);
			}
		number++;
	}
	number++;
	while ((counter - SMALL) < BIG)
	{
		if (isPrimeLarge(number, smallPrimes, SMALL))
			{
				bigPrimes[counter-SMALL] = number;
				counter++;
				printf("%d\n", number);
			}
	number = number + 2;
	}
//not checking with small primes - need to fix
	while (number < 2000000)
	{
		if (isPrimeLarge(number, bigPrimes, BIG))
			{

				counter ++;
				printf("%d\n", counter);
			}
		number = number + 2; 
	}
printf("%d\n", counter);

}

bool isPrimeSmall(int number)
{
	//initial checking of first 13 primes
	int earlyPrime[] = {2,3,5,7,11,13,17,19,23,29,31,37,41,43,47};
 	while (number < earlyPrime[14] + 1)
	{ 	for (int i = 0; i < 15; i++)
	 	{
	 		if (number == earlyPrime[i]) 
	 			return true;		
	 	}
	 	return false;
	}
	int j = earlyPrime[14] + 2;
	if (j > number)
		return false;
	while(j < number)
	{
		if (number % j == 0)
			return false;
		j = j + 2;
	}
	return true;
}

bool isPrimeLarge(int number, int primeArray[], int size)
{
	int j = 2;
	while (j <= primeArray[size - 1])
	{
		for (int i = 0; i < size; i++)
		 	{
		 		if (number % primeArray[i] == 0) 
		 			return false;		
		 	}
		j = primeArray[size - 1] + 2;
	}

	if (j > number)
		return false;
	while(j < number)
	{
		if (number % j == 0)
			return false;
		j = j + 2;
	}
	return true;
}