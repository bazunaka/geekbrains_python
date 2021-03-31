import hashlib

salt = "geekbrains"
cache = {}

def get_page(url):
    if cache.get(url):
        print(f"Адрес {url} присутствует в кэше.")
    else:
        result = hashlib.sha256(salt.encode() + url.encode()).hexdigest()
        cache[url] = result
        print(cache)

get_page('https://geekbrains.ru')
get_page('https://geekbrains.ru')
