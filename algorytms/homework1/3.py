import collections

company_profit = {  "comp_1": 10000,
                    "comp_2": 8000,
                    "comp_3": 7000,
                    "comp_4": 12000,
                    "comp_5": 16000,
                    "comp_6": 11000,
                    "comp_7": 9000,
                    "comp_8": 12500}

def func1_max(dict_obj):
    result = []
    result = collections.Counter(dict_obj).most_common(3) #O(n)
    return result

#вывод
print(func1_max(company_profit))

#func2_max
result = list(company_profit.items())
result.sort(key = lambda i: i[1], reverse = True) #O(n log n)
for i in range(3):
    print(result[i][0], '=', result[i][1])

def func3_max(list_obj):
    maximum = {}
    lst = dict(list_obj)
    for i in range(3):
        result = max(lst.items(), key=lambda m: m[1])
        #del lst[result[0]]
        maximum[result[0]] = result[1]
    return maximum

print(func3_max(company_profit))