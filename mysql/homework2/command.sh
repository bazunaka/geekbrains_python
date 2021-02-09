//Создаем файл
touch .my.cnf
sudo nano .my.cnf

//Добавляем 
[client]
user=root
password=

//Доступ к файлу
chmod 0600 .my.cnf

//Создаем БД
mysql
create database example;
use example;

create table users (id SERIAL, name VARCHAR(200) NOT NULL UNIQUE);

//Добавляем записи
insert into users VALUES (1, 'Ivan');
insert into users VALUES (2, 'Petr');

//Создаем dump БД example
mysqldump example >> example.sql

//Создаем БД sample
mysql -e 'create database sample'

//Разворачиваем dump
mysql sample < example.sql
