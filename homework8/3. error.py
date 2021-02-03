class Error:
    def __init__(self, *args):
        self.my_list = []

    def my_input(self):
        while True:
            try:
                value = int(input("Вводите значения (Enter) - "))
                self.my_list.append(value)
                print(f'Текущий список - {self.my_list} \n')
            except:
                print(f'Недопустимое значение!')
                again = input("Для продолжения введите значение. Для выхода наберите - stop")
                if again != 'stop':
                    print(er.my_input())
                else:
                    return 'Вы вышли!'

er = Error(1)
print(er.my_input())