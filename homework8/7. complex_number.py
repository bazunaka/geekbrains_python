class ComplexNumber:
    def __init__(self, a, b, *args):
        self.a = a
        self.b = b
        #числа вида a+b*i, где a,b — вещественные числа, i — мнимая единица
        self.z = 'a + b * i'
 
    def __add__(self, other_numb):
        print(f'Сумма z1 и z2 равна')
        return f'z = {self.a + other_numb.a} + {self.b + other_numb.b} * i'

    def __mul__(self, other_numb):
        print(f'Произведение z1 и z2 равно')
        return f'z = {self.a * other_numb.a - (self.b * other_numb.b)} + {self.b * other_numb.a} * i'

    def __str__(self):
        return f'z = {self.a} + {self.b} * i'

num1 = ComplexNumber(1, -2)
num2 = ComplexNumber(3, 4)

print(num1)
print(num2)

print(num1 + num2)
print(num1 * num2)