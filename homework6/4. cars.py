class Car:

    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        return f'{self.name} поехал(-а)'

    def stop(self):
        return f'{self.name} остановился(-лась)'

    def turn_right(self):
        return f'{self.name} повернул(-а) направо'

    def turn_left(self):
        return f'{self.name} повернул(-а) налево'

    def show_speed(self):
        return f'Текущая скорость {self.name} = {self.speed}'

class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)


class WorkCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость рабочего автомобиля {self.name} равна {self.speed}')

        if self.speed > 40:
            return f'Скорость {self.name} выше разрешенной!'

class TownCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость городского автомобиля {self.name} равна {self.speed}')

        if self.speed > 60:
            return f'Скорость {self.name} выше разрешенной!'

class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

audi = SportCar(100, 'Red', 'Audi', False)
kia = TownCar(70, 'White', 'Kia', False)
lada = WorkCar(50, 'Rose', 'Lada', False)
ford = PoliceCar(90, 'Blue',  'Ford', True)

print(audi.show_speed())
print(kia.show_speed())
print(ford.show_speed())

print(audi.turn_left())
print(ford.turn_right())

print(lada.stop())
print(kia.go())