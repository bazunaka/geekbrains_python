class Data:
    def __init__(self, day_month_year):
        self.day_month_year = str(day_month_year)

    @classmethod
    def extract(cls, day_month_year):
        new_date = []

        for i in day_month_year.split():
            if i != '-':
                new_date.append(i)
            #хотел попробовать с другими символами
            #ValueError: invalid literal for int() with base 10: '/'
            #elif i != '/':
            #    new_date.append(i)
            #elif i != '.':
            #    new_date.append(i)

        return int(new_date[0]), int(new_date[1]), int(new_date[2])

    def __str__(self):
        return f'Текущая дата {Data.extract(self.day_month_year)}'

today = Data('28 - 12 - 2020')
print(Data.extract('28 - 12 - 2020'))
print(today.extract('28 - 12 - 2020')) 