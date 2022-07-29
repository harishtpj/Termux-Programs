# Composite square division examples cases

def composite_list(int_list):
    cl = []
    for num in int_list:
        for i in range(2, num):
            if num % i == 0:
                cl.append(num)
                break
    return cl

positive_int = list(range(1,10001))
composite_int = composite_list(positive_int)
# print(positive_int)
# print(composite_int)

result = open("result.txt", "w+")

for c in composite_int:
    for a in positive_int:
        if a > c:
            if a**2 % c == 0:
                print(f"{a**2} is divisible     by {c}\n")
                result.write(f"{a**2} is divisible     by {c}\n")
                if a % c == 0:
                    print(f"{a} is divisible     by {c}\n")
                    result.write(f"{a} is divisible by {c}\n\n")


result.close()
