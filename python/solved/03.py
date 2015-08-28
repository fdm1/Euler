
# /*************************************
# *
# *   Find the largest prime factor of the number 600851475143
# *
# **************************************/

import time
start_time = time.time()

num = 600851475143
res = 0
primes = [2]
i = 3

def isprime(n, primes):
    prime_check = (len(list(filter(lambda x: n % x == 0 and n != x, primes))) == 0)
    rest_check = (len(list(filter(lambda x: n % x == 0 and n != x, range(primes[len(primes) - 1],n)))) == 0)
    return prime_check and rest_check

while num > 1:
    if isprime(i, primes):
        primes.append(i)
        while num % i == 0:
            num = num / i        
    i += 2

res = primes[len(primes)-1]
print("answer: %s\n\n--- Complete in %s seconds ---" % (res, time.time() - start_time))
