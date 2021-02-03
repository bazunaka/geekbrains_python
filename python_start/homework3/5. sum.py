'''total_sum = 0
prev_sum = 0
digit = []

while True:
    digits = list(input("Введите числа через пробел: ").split())
    if digits == 'q':
        break
    print(digits)'''

stop_index = None
result = 0

#отдельная функция преобразования в int
def convert (item):

    int_item = int(item.split('.')[0])

    return int_item

#функция для суммирования

def sum(iterable, start = 0):
    result = start

    for item in iterable:
        result += item

    return result

while True:
    digit = input("Введите числа через пробел: ").split()

    stop_index = digit.index('q')
    digit = digit[:stop_index]

    digit = [convert(i) for i in digit]

    result += sum(digit)

    print(result)

    '''while a < len(digit):
        digit[a] = int(digit[a])
        a = a + 1
    result = 0

    for c in digit:
        result = result + c

    print(result)'''