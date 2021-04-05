import collections

while True:
    n = int(input("Введите количество компаний: "))
    break

#вызывает функцию для предоставления отсутствующих значений
companies = collections.defaultdict() #Возвращает новый объект, подобный словарю
profit = collections.deque() #контейнер в виде списка, обобщение стеков и очередей
unprofit = collections.deque()
all_profit = 0
quarter = 4

for i in range(n):
    name = input(f'\nВведите название {i + 1}й компании: ')
    profit = 0
    q = 1
    while q <= quarter:
        profit += float(input(f'Введите прибыль за {q}й квартал: '))
        q += 1
    companies[name] = profit
    all_profit += profit

midlle_profit = all_profit / n
for i, item in companies.items():
    if item >= midlle_profit:
        profit.append(i)
    else:
        unprofit.append(i)

print(f'Общая средняя прибыль: {midlle_profit}')
print(f'Прибыль выше среднего у {len()} компаний: ')
for name in profit:
    print(name)
print(f'Прибыль ниже среднего у {len()} компаний: ')
for name in unprofit:
    print(name)