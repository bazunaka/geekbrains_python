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
