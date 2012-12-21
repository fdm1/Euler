

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
