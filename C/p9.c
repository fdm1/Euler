/*
A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

#include <stdio.h>

/********************************************************************************
*																				*
*	There exists exactly one Pythagorean triplet for which a + b + c = 1000.	*
*	Find the product abc.														*
*																				*
********************************************************************************/

int main (void)
{
	int a = 1, b = 0, c = 1000;

	while (a < 999)
	{
		b = a;
		
		while (b < c)
		{
			c = 1000 - b - a;

			if ((c * c) == ((a * a) + (b * b)))
				printf("\n\n%d\n", (a * b * c));

			b++;
		}
		c = 1000;
		a++;
	}
}