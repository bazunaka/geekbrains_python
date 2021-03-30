def recursion_method(i, number, n_count, common_sum):
    if i == n_count:
        print(f"Количество элементов = {n_count}, их сумма = {common_sum}")
    elif i < n_count:
        return recursion_method(i + 1, number / 2 * -1, n_count, common_sum + number)


try:
    N_COUNT = int(input("Введите количество элементов: "))
    recursion_method(0, 1, N_COUNT, 0)
except ValueError:
    print("Введена строка!")