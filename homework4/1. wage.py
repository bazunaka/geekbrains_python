'''from sys import argv

# pylint: disable=unbalanced-tuple-unpacking

t_time, salary, bonus = argv

t_time = int(t_time)
salary = int(salary)
bonus = int(bonus)
result = t_time * salary + bonus
print(f'Заработная плата {result}')'''

#выдает ошибку в терминале: 
#MacBook-Pro-Andrej:homework4 andrejsuvorov$ python3 wage.py 1 1 1
#Traceback (most recent call last):
#  File "wage.py", line 4, in <module>
#    time, salary, bonus = argv
#ValueError: too many values to unpack (expected 3)

def salary():
    time = float(input('Выработка в часах: '))
    salary = int(input('Ставка: '))
    bonus = int(input('Премия: '))
    res = time * salary + bonus
    print(f'заработная плата сотрудника  {res}')

salary()