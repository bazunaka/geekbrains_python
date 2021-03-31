import time

def create_list(length):
    new_list = []
    for i in range(length):
        new_list.append(i)
    return new_list

def create_dict(length):
    new_dict = {}
    for i in range(length):
        new_dict[i] = f"number {i}"
    return new_dict

def search_list_index(list_obj):
    for i in range(len(list_obj)):
        if i == 123:
            print(list_obj[i])

def search_dict_key(dict_obj):
    i = dict_obj[123]
    print(i)

start_time = time.time()
new_list_1 = create_list(1000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_dict_1 = create_dict(1000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_list_2 = create_list(1000000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_dict_2 = create_dict(1000000)
print("%s seconds" % (time.time() - start_time))

#добавление в словарь происходит дольше

start_time = time.time()
search_list_index(new_list_1)
print("%s seconds" % (time.time() - start_time)) #быстрее - меньше кол-во элементов

start_time = time.time()
search_list_index(new_list_2)
print("%s seconds" % (time.time() - start_time)) #чем здесь

start_time = time.time()
search_dict_key(new_dict_1)
print("%s seconds" % (time.time() - start_time)) #чем здесь 

start_time = time.time()
search_dict_key(new_dict_2)
print("%s seconds" % (time.time() - start_time)) #быстрее

#из 4х функций - поиск по ключу в словаре быстрее, чем по индексу в списке