import hashlib
from collections import Counter

s = input("Введите строку из маленьких латинских букв: ")
r = set()

N = len(s)
for i in range(N):
    if i == 0:
        N = len(s) - 1
    else:
        N = len(s)
    for j in range(N, i, -1):
        r.add(hashlib.sha1(s[i:j].encode('utf-8')).hexdigest())


print(f"Количество различных подстрок в строке {s} равно {len(r)}")