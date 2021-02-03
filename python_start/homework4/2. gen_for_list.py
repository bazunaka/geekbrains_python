my_list = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]
new_list = [elem for num, elem in enumerate(my_list) if my_list[num-1] < my_list[num]]

del new_list[0]

print(f'Исходный список: {my_list}')
print(f'Новый список: {new_list}')

#первый элемент получается нужно пропускать? иначе так как его
#не с чем сравнивать он автоматически попадает в новый список