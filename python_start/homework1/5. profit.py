proceeds = int(input("Введите выручку: "))
costs = int(input("Введите издежки: "))

if proceeds > costs:
    print("Финансовый результат фирмы - прибыль!")
    profit = proceeds - costs
    profitability = float(profit/proceeds)
    print(f'Рентабельность = {profitability}')
else:
    print("Финансовый результат фирмы - убытки!")

units = int(input("Введите количество сотрудников: "))

print(f'Прибыль на одного сотрудника = {profit/units}')