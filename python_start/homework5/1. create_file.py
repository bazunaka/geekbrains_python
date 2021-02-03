my_list = []
while True:
    line = input("Введите строку: ")
    if line == '':
        print(my_list)
        exit()
    else:
        newline = line + "\n"
        my_list.append(newline)

    with open("homework5/test.txt", "w") as file_obj:
        file_obj.writelines(my_list)