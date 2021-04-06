import collections

signs = '0123456789ABCDEF'
table = collections.defaultdict(int)
counter = 0

for key in signs:
    table[key] += counter
    counter += 1

def my_dex(string):
    dex = 0
    num = collections.deque(string)
    num.reverse()
    for i in range(len(num)):
        dex += table[num[i]] * 16 ** i
    return dex


def my_hex(numb):
    num = collections.deque()
    dec = numb % 16
    #цикл
    for i in table:
        if table[i] == dec:
            num.append(i)
    num.reverse()
    return list(num)

num_1 = my_dex(input('Введите первое число в шестнадцатиричном формате:\n ').upper())
num_2 = my_dex(input('Введите второе число в шестнадцатиричном формате:\n ').upper())

print(f'Сумма чисел: {my_hex(num_1 + num_2)}')
print(f'Произведение чисел: {my_hex(num_1 * num_2)}')