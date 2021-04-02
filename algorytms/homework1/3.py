import collections

company_profit = {  "comp_1": 10000,
                    "comp_2": 8000,
                    "comp_3": 7000,
                    "comp_4": 12000,
                    "comp_5": 16000,
                    "comp_6": 11000,
                    "comp_7": 9000,
                    "comp_8": 12500}

 #for item in company_profit.items():
 #   print(item[1])

def f1(dict_obj):
    result = []
    result = collections.Counter(dict_obj).most_common(3)
    return result

def f2(dict_obj):
    result = list(dict_obj.items())
    result.sort(key = lambda i: i[1], reverse = True)

def f3(dict_obj):
    m = max(dict_obj.values()) #O(n)
    return list(filter(lambda t: t[1]==m, dict_obj.items()))[0][1] 

print(f1(company_profit))
print(f3(company_profit))  

