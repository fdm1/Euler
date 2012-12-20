#include <stdio.h>
#include <stdbool.h>

#define min 100
#define max 999

/************************************************
*												*
*	Find the largest palindrome made 			*
*   from the product of two 3-digit numbers		*
*												*
*	Includes a palindrome checker				*
*	Includes a exponent program					*
*												*
************************************************/

bool isPalin(int product);

int power(int base, int exponent);

int main(void)
{
	int x = min;

	int answer = 0;

	while(x <= max)
	{
		//start at x squared
		int y = x;

		//iterate up through every integer higher than x
		for (int i = 0; i <= (max - x) ; i++)
		{
			int product = x * (y + i);

			//if that number is a palindrome, it becomes the answer until replaced
			if (isPalin(product))
			{
				if (product > answer)
				{
					answer = product;
					printf("%d\n", answer);
				}
			}
		}

		//iterate x
		x++;
	}

	printf("\n\n%d\n", answer);
}

bool isPalin(int product)
{
	//determine length of product
	int length_calculator = 100;
	int length = 0;

	while (length_calculator > 10) 
	{
		length_calculator = product/(power(10, length));
		length++;
	}

	//COMPARE DIGITS
	char number[(length + 1)];
	snprintf(number, (length + 1), "%d", product);

	for(int i = 0; i <= (length/2); i++)
	{
		if (number[i] != number[length - 1 - i])
			return false;

		if (i == (length/2))
			return true;
	}

	return false;
}


int power(int base, int exponent)
{
	int i = 1;

	int result = base;

	if (exponent == 0)
		return 1;

	if (exponent == 1)
		return base;

	while (i < exponent)
	{
		result = result * base;
		i++;
	}
	return result;
}

