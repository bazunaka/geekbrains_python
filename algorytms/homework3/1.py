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

def check_list_index(list_obj):
    for i in range(len(list_obj)):
        if i == 12:
            print(list_obj[i])

start_time = time.time()
new_list_1 = create_list(1000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_dict_1 = create_dict(1000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_list_1 = create_list(1000000)
print("%s seconds" % (time.time() - start_time))

start_time = time.time()
new_dict_1 = create_dict(1000000)
print("%s seconds" % (time.time() - start_time))

#добавление в словарь происходит дольше
