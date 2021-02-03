my_string = input("Введите строку: ")
my_word = []

number = 1

for element in range(my_string.count(' ') + 1):
    my_word = my_string.split()
    if len(str(my_word)) <= 10:
        print(f"{number} {my_word[element]}")
        number += 1
    else:
        print(f"{number} {my_word[element] [0:10]}")
        number += 1