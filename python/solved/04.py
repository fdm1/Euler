
# /************************************************
# *												*
# *	Find the largest palindrome made 			*
# *   from the product of two 3-digit numbers	*
# *												*
# *												*
# ************************************************/
import time
start_time = time.time()

res = 0

def is_palindrome(s):
    for i in range(int(len(s)/2)):
        if s[:int(len(s)/2)][i] != s[int(len(s)/2):][int(len(s)/2)-i-(0 if len(s) % 2 != 0 else 1)]:
            return False
    return True

def get_answer():
    res=0
    i = 999
    k = 999
    n = 100
    while i > 100 and k > 100:
        for x in range(n):
            for y in range(n):
                p = (i-x)*(k-y)
                # print(i-x, k-y, p)
                if is_palindrome(str(p)):
                    # print(p)
                    if p > res:
                        res = p
                    else:
                        return res, i-x, k-y


        i -= n
        k -= n


res, x, y = get_answer()

print("answer: %s\n\n--- Complete in %s seconds ---" % ([res,x,y], time.time() - start_time))
