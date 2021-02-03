def div(*args):

    try:
        arg1 = int(input("Введите делимое: "))
        arg2 = int(input("Введите делитель: "))
        result = arg1 / arg2
    except ZeroDivisionError:
        return "Ошибка деления! Вы не можете делить на 0"

    return result

print(f'Результат {div()}')