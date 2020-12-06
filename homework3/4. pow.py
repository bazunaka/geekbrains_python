def pow(x, y):
    if y < 0:
        return x ** y
    if y > 0:
        return 1 / x ** y

x = int(input("Введите действительное положительное число: "))
y = int(input("Введите целое отрицательное число: "))

print(f'Результат - {pow(x,y)}')