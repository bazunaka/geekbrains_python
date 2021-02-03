import json

profit_dict = {}
profit = 0
i = 0 #для подсчета кол-ва итераций -> среднее значение

with open('homework5/file_7.txt', 'r') as file:
    for line in file:
        name, fir, earning, damage = line.split()
        profit_dict[name] = int(earning) - int(damage)
        if profit_dict[name] >= 0:
            profit = profit + profit_dict[name]
            i += 1

    if i != 0:
        average = profit / i
        print(f'Средняя прибыль = {average}')
    else:
        print(f'Средняя прибыль отсутствует!')

    print(f'Прибыль каждой компании = {profit_dict}')

with open('homework5/file_7.json', 'w') as write_js:
    json.dump(profit_dict, write_js)