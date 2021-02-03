numb = int(input("Введите число: "))

max_numb = 0

num = numb

while num > 0:
    last_num = num % 10
    if last_num > max_numb:
        max_numb = last_num
    if max_numb == 9:
        break
    num = num // 10

print(f'Наибольшая цифра в числе {numb} равна {max_numb}')