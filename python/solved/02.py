
# /*************************************
# *
# *   find the sum of the evem terms in the 
# *   Fibonacci sequence whose values do not exceed four million
# *
# **************************************/




import time
from functools import reduce

start_time = time.time()

nums = [0,1]
while nums[len(nums)-1] <= 4000000:
    nums.append(nums[len(nums)-1] + nums[len(nums) - 2])

res = reduce(lambda x,y: x + y , list(filter(lambda x: x < 4000000 and x % 2 == 0, nums)))
print("answer: %s\n\n--- Complete in %s seconds ---" % (res, time.time() - start_time))

