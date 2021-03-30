users = {"user1": {"password": "qwerty", "active": True},
         "user2": {"password": "12345", "active": True},
         "user3": {"password": "11111", "active": False},
         "user4": {"password": "q1w2e3", "active": True},
         "user5": {"password": "00000", "active": False}}
#линейная
def auth_1(users, username, password):
    for key, value in users.items(): #Объект представления, возвращаемый функцией .items(), выдает пары ключ-значение по одной -> зависит от количества элементов в словаре
        if key == username:
            if value['password'] == password and value['active']:
                return "Доступ к ресурсу есть!"
            elif value['password'] == password and not value['active']:
                return "Нужно активировать запись!"
            elif value['password'] != password:
                return "Неверный пароль!"
        else:
            return "Пользователя не существует("
#Постоянная
def auth_2(users, username, password):
    if users.get(username):
        if users[username]['password'] == password and users[username]['active']:
            return "Доступ к ресурсу есть!"
        elif users[username]['password'] == password and not users[username]['active']:
            return "Нужно активировать запись!"
        elif users[username]['password'] != password:
            return "Неверный пароль!"
    else:
            return "Пользователя не существует("        

print(auth_1(users, 'user123', 'asd'))
print(auth_2(users, 'user2', '12345'))