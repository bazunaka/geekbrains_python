my_list = [7, 5, 3, 3, 2]

print(my_list)

digit = int(input("Введите число (или 000 для выхода): "))

while digit != 000:
    for elem in range(len(my_list)):
        if my_list[elem] == digit:
            my_list.insert(elem + 1, digit)
            break
        elif my_list[0] < digit:
            my_list.insert(0, digit)
        elif my_list[-1] > digit:
            my_list.append(digit)
        elif my_list[elem] > digit and my_list[elem + 1] < digit:
            my_list.insert(elem + 1, digit)
    print(f"Текущий список - {my_list}")
    digit = int(input("Введите число (или 000 для выхода): "))