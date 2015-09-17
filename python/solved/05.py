# /************************************************
# *                                             *
# * Find the smallest positive number           *
# * that is evenly divisible by all of          *
# * the numbers from 1 to 20                    *
# *                                             *
# ************************************************/
import time
start_time = time.time()

res = 0
divisors = [20,19,18,17,16,15,14,13,12,11]
n = 19*17*13*11

while res == 0:
    print(n)
    ct = 0
    for d in divisors:
        # print(d)
        if n%d == 0: 
            ct += 1
        else:
            n+=(19*17*13*11)
            continue
        if ct == len(divisors):
            res = n

print("answer: %s\n\n--- Complete in %s seconds ---" % (res, time.time() - start_time))
