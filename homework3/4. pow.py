def pow(x, y):
    if y < 0:
        '''i = 1
        while i < abs(y):
            x = (1 / x) * (1 / x) 
            i += 1
        return x'''
        return x ** y
    if y > 0:
        return 1 / x ** y

x = int(input("Введите действительное положительное число: "))
y = int(input("Введите целое отрицательное число: "))

print(f'Результат - {pow(x,y)}')