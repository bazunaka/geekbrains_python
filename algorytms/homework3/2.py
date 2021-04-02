import hashlib

password = input("Введите пароль: ")

def auth(password):
    encode_password = password.encode("utf-8")
    hash_password = hashlib.sha256(encode_password)
    p = hash_password.hexdigest()
    check_password = input("Введите пароль еще раз: ")
    encode_check_password = check_password.encode("utf-8")
    hash_check_password = hashlib.sha256(encode_check_password)
    check_p = hash_check_password.hexdigest()

    if p == check_p:
        print("Авторизация прошла успешно!")
    else:
        print("Пароли не совпадают(")

auth(password) 
