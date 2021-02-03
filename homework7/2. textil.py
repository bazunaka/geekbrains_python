class Textil:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def get_square_coat(self):
        return self.width / 6.5 + 0.5

    def get_square_jacket(self):
        return self.height * 2 + 0.3

    @property
    def get_square_full(self):
        return str(f'Площадь общая ткани \n'
                   f' {(self.width / 6.5 + 0.5) + (self.height * 2 + 0.3)}')

class Coat(Textil):
    def __init__(self, width, height):
        super().__init__(width, height)
        self.square_coat = self.width / 6.5 + 0.5

    def __str__(self):
        return f'Площадь на пальто {self.square_coat}'

class Jacket(Textil):
    def __init__(self, width, height):
        super().__init__(width, height)
        self.square_jacket = self.height / 2 + 0.3

    def __str__(self):
        return f'Площадь на костюм {self.square_jacket}'

coat = Coat(8, 5)
jacket = Jacket(1, 2)

print(coat)
print(jacket)
print(coat.get_square_coat())
print(jacket.get_square_jacket())

print(coat.get_square_full)
print(jacket.get_square_full)