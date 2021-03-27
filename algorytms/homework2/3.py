def reverse_number(number):
    rest_number, numeral = divmod(number, 10)
    if rest_number == 0:
        return str(numeral)
    else:
        return str(numeral) + str(reverse_number(rest_number))

number = int(input("Введите число: "))
print(f'Перевернутое число = {reverse_number(number)}')