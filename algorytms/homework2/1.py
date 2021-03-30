def calculator():
    operation = input("Введите /, +, - или *. Для выхода введите 0: ")
    
    if operation == '0':
        exit

    else:
        if operation in '/+-*':
            try:
                numb_1 = int(input("1-е число: "))
                numb_2 = int(input("2-е число: "))

                if operation == '/':
                    if numb_2 == 0:
                        print("Деление на 0!!!")
                    else:
                        result = numb_1 / numb_2
                        print(f"Результат = {result}")
                        return calculator()

                elif operation == '+':
                    result =  numb_1 + numb_2
                    print(f"Результат = {result}")
                    return calculator()

                elif operation == '-':
                    result =  numb_1 - numb_2
                    print(f"Результат = {result}")
                    return calculator()

                elif operation == '*':
                    result =  numb_1 * numb_2
                    print(f"Результат = {result}")
                    return calculator()

            except ValueError:
                print("Введена строка!")
                return calculator()
        else: 
            print("Введен неверный символ!")
            return calculator()

calculator()