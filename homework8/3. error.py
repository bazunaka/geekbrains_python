class Error:
    def __init__(self, *args):
        self.mu_list = []

    def my_input(self):
        while True:
            try:
                value = int(input(""))
                self.my_list.append(value)
                print(f'')
            except:
                print(f'')
                again = input("")
