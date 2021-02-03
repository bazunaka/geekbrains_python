default_list = list(input("Введите значения списка: "))

for i in range(1, len(default_list), 2):
    default_list[i-1], default_list[i] = default_list[i], default_list[i-1]

print(' '.join([str(i) for i in default_list]))