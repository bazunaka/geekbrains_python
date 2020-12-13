#работаем с файлом, созданным через скрипт 1. create_file.py 
#из 1 задания
with open("test.txt") as file_obj:
    lines = 0
    letters = 0
    for line in file_obj:
        lines += line.count("\n")
        letters = len(line)-1
        print(f"{letters} символ(-а/-ов) в строке")
    print(f"Всего строк: {lines}")