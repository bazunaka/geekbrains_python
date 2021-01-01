class Sklad:

    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity

    def __str__(self):
        return f'{self.name} цена {self.price} количество {self.quantity}'

class Printer(Sklad):
    def to_print(self):
        return f'Принтер стоит {self.price}'


class Scanner(Sklad):
    def to_scan(self):
        return f'Сканер стоит {self.price}'


class Copier(Sklad):
    def to_copier(self):
        return f'Ксерокс стоит {self.price}'

unit_1 = Printer('hp', 2000, 5, 10)
unit_2 = Scanner('Canon', 1200, 5, 10)
unit_3 = Copier('Xerox', 1500, 1, 15)