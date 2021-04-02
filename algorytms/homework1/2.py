def min_value_1(lst_obj):
    # линейная 
    min = lst_obj[0]
    for i in lst_obj:
        if i < min:
            min = i
    return min

def min_value_2(lst_obj):
    # квадратичная
    for i in lst_obj:
        min = i
        for j in lst_obj:
            if i > j:
                min = j
        return min


lst = [20,3,5,23,6,2,55,56,100,1,-2]
print(min_value_1(lst))
print(min_value_2(lst))