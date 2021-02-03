#Просим ввести количество секунд

seconds = int(input("Введите количество секунд: "))
#Приводим вывод input к int

hours = seconds//3600
minutes = seconds%3600//60
second = seconds%3600%60

print("{0}:{1}:{2}".format(hours, minutes, second))