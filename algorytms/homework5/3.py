from collections import deque
import time

def time_decorator(func):
    def timer(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        return result, end - start 
    return timer

numbers = range(1000)

deq = deque(numbers)
lst = list(numbers)

@time_decorator
def add_in_list(list_obj):
    list_obj.append('1001')
    return list_obj

@time_decorator
def add_in_deq(deq_obj):
    deq_obj.append('1001')
    return deq_obj

new_list, list_time = add_in_list(lst)
new_deq, deq_time = add_in_deq(deq)
print(list_time)
print(deq_time)