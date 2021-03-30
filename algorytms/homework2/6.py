import random

def guess_number(count, number):
    print(f'{count} попытка.')
    answer = int(input("Введите число от 0 до 100: "))
    if count == 10 or answer == number:
        if answer == number:
            print("Верно!")
        print(f"Загаданное число: {number}")
    else:
        if answer > number:
            print(f"Загаданное число меньше чем {number}")
        else:
            print(f"Загаданное число больше чем {number}")
        guess_number(count + 1, number)


guess_number(1, random.randint(0, 100))