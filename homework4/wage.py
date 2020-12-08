from sys import argv

# pylint: disable=unbalanced-tuple-unpacking
time, salary, bonus = argv

'''t_time = int(t_time)
salary = int(salary)
bonus = int(bonus)
result = t_time * salary + bonus
print(f'Заработная плата {result}')'''

time = float(input('Выработка в часах: '))
salary = int(input('Ставка: '))
bonus = int(input('Премия: '))
res = time * salary + bonus
print(f'заработная плата сотрудника  {res}')