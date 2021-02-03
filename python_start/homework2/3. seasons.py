seasons_list = ['зима', 'весна', 'лето', 'осень']
seasons_dict = {1 : 'зима', 2 : 'весна', 3 : 'лето', 4 : 'осень'}

month = int(input("Введите номер месяца: "))
if month > 0 and month <= 2 or month == 12:
    print(seasons_dict.get(1))
    print(seasons_list[0])
elif month > 2 and month <= 5:
    print(seasons_dict.get(2))
    print(seasons_list[1])
elif month > 5 and month <= 8:
    print(seasons_dict.get(3))
    print(seasons_list[2])
elif month > 8 and month <= 11:
    print(seasons_dict.get(4))
    print(seasons_list[3])
else:
    print("Такого месяца не существует!")