'''total_sum = 0
prev_sum = 0
digit = []

while True:
    digits = list(input("Введите числа через пробел: ").split())
    if digits == 'q':
        break
    print(digits)'''

while True:
    digit = input("")
    digit = digit.split(" ")
    a = 0

    while a < len(digit):
        digit[a] = int(digit[a])
        a = a + 1
    result = 0

    for c in digit:
        result = result + c

    print(result)