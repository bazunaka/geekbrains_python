class Road:
    __length = None
    __width  = None
    weigth   = None
    tickness = None
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def intake(self, weigth, tickness):
        self.weigth = weigth
        self.tickness = tickness
        intake = self.length * self.width * self.weigth * self.tickness / 1000
        print(f'Необходимо {intake} тонн асфальта')

road = Road(20, 5000)
road.intake(25, 5)