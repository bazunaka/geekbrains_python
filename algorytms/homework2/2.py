def even_and_odd_counter(number, even = 0, odd = 0):
    
    if number == 0:
        return even, odd

    else:
        current_number = number % 10
        number = number // 10
        if current_number % 2 == 0:
            even += 1
        else:
            odd += 1
        return even_and_odd_counter(number, even, odd)

try:
    your_numb = int(input("Введите число: "))
    print(f"{even_and_odd_counter(your_numb)}")
except ValueError:
    print("Вы ввели строку!")