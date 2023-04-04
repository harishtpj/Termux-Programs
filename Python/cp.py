# Composite square division examples cases
import math
import sys


def primeFactors(n):
    factors = []

    while n % 2 == 0:
        factors.append(2)
        n = n / 2


    for i in range(3,int(math.sqrt(n))+1,2):
        while n % i== 0:
            factors.append(i)
            n = n / i

    if n > 2:
        factors.append(n)

    return factors

def if_prime_raised(num):
    factors = primeFactors(num)
    for n in factors:
        if factors.count(n) > 1:
            return True
    return False



def is_perfect_sq(num):
    root = math.sqrt(num)
    if int(root + 0.5) ** 2 == num:
        return True
    else:
        return False

def composite_list(int_list):
    cl = []
    for num in int_list:
        for i in range(2, num):
            if num % i == 0:
                cl.append(num)
                break
    return cl

positive_int = list(range(int(sys.argv[1]),int(sys.argv[2])+1))
composite_int = composite_list(positive_int)
# print(positive_int)
# print(composite_int)

result = open("result.txt", "w+")

for c in composite_int:
    for a in positive_int:
        if (a != c) and (not if_prime_raised(c)):
            if a**2 % c == 0:
                print(f"{a**2} is divisible     by {c}\n")
                result.write(f"{a**2} is divisible     by {c}\n")
                if a % c == 0:
                    print(f"{a} is divisible     by {c}\n")
                    result.write(f"{a} is divisible by {c}\n\n")
                else:
                    print(f"{a} is not divisible     by {c}\n")
                    result.write(f"{a} is not  divisible by {c}\n\n")


result.close()
