from collections import deque
import cProfile

def profile(func):
    def wrapper(*args, **kwargs):
        profile_filename = func.__name__ + '.prof'
        profiler = cProfile.Profile()
        result = profiler.runcall(func, *args, **kwargs)
        profiler.dump_stats(profile_filename)
        return result
    return wrapper

numbers = range(10000000)

deq = deque(numbers)
lst = list(numbers)

@profile
def add_in_list(list_obj): #функция выполняется дольше всех
    for i in list_obj:
        if i == '50000':
            list_obj.append('1001')
    return list_obj

@profile
def insert_in_list(list_obj):
    list_obj.insert(len(list_obj) - 1, '1001')
    return list_obj

@profile
def add_in_deq(deq_obj): #самая быстрая функция
    deq_obj.append('1001')
    return deq_obj

@profile
def extend_in_deq(deq_obj):
    deq_obj.extend('1001')
    return deq_obj

add_in_list(lst)
insert_in_list(lst)
add_in_deq(deq)
extend_in_deq(deq)