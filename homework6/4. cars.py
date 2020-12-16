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