from collections import deque
import time

def time_decorator(func):
    def timer(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        return result, end - start 
    return timer

numbers = range(10000000)

deq = deque(numbers)
lst = list(numbers)

@time_decorator
def add_in_list(list_obj): #функция выполняется дольше всех
    list_obj.append('1001')
    return list_obj

@time_decorator
def insert_in_list(list_obj):
    list_obj.insert(len(list_obj) - 1, '1001')
    return list_obj

@time_decorator
def add_in_deq(deq_obj): #самая быстрая функция
    deq_obj.append('1001')
    return deq_obj

@time_decorator
def extend_in_deq(deq_obj):
    deq_obj.extend('1001')
    return deq_obj

new_list_1, list_time_1 = add_in_list(lst)
new_list_2, list_time_2 = insert_in_list(lst)
new_deq_1, deq_time_1 = add_in_deq(deq)
new_deq_2, deq_time_2 = extend_in_deq(deq)

#исходя из тестов - функции с deque выполняются быстрее, чем с list, но при небольших значениях время выполнения всех функций приблизительно равно
#deque хорошо для больших объемов
print(list_time_1)
print(list_time_2)

print(deq_time_1)
print(deq_time_2)