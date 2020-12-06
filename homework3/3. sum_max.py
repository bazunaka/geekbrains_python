def my_func(arg1, arg2, arg3):
    digit = [arg1, arg2, arg3]
    digit.sort(reverse=True)
    return digit[0] + digit[1]

digit1 = int(input("Введите 1ое число: "))
digit2 = int(input("Введите 2ое число: "))
digit3 = int(input("Введите 3е число: "))

print(f'Результат - {my_func(digit1, digit2, digit3)}')