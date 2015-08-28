# /*************************************
# *
# * Find the sum of all the multiples of 3 or 5 below 1000
# * 
# **************************************/

import time
from functools import reduce

start_time = time.time()

nums = list(filter(lambda x: x % 3 == 0 or x % 5 == 0, range(0,1000)))
res = reduce(lambda x,y: x + y, nums)

print("answer: %s\n\n--- Complete in %s seconds ---" % (res, time.time() - start_time))

