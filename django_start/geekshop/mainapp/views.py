from django.shortcuts import render


def main(request):
    data = {"title_name": "Магазин GeekShop", "name_shop": "Geekshop"}
    return render(request, 'mainapp/index.html', context=data)


def products(request):
    catalog = ["Новинки", "Одежда", "Обувь", "Аксессуары", "Подарки"]
    return render(request, 'mainapp/products.html', context={"catalog": catalog})


def contacts(request):
    return render(request, 'mainapp/contacts.html')
