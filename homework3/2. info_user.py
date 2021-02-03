def info_user(name, surname, year, city, email, phone):
    return ' '.join([name, surname, year, city, email, phone])

username = input("Введите имя: ")
user_surname = input("Введите фамилию: ")
user_year = input("Введите год рождения: ")
user_city = input("Введите город: ")
user_email = input("Введите эл.почту: ")
user_phone = input("Введите номер телефона: ")

print(info_user(name = username, surname = user_surname, year = user_year, city = user_city, email = user_email, phone = user_phone))