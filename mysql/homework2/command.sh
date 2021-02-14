#Создаем файл
touch .my.cnf
sudo nano .my.cnf

#Добавляем 
[client]
user=root
password=

#Доступ к файлу
chmod 0600 .my.cnf

#Создаем БД
mysql
create database example;
use example;

create table users (id SERIAL, name VARCHAR(200) NOT NULL UNIQUE);

#Добавляем записи
insert into users VALUES (1, 'Ivan');
insert into users VALUES (2, 'Petr');

#Создаем dump БД example
mysqldump example >> example.sql

#Создаем БД sample
mysql -e 'create database sample'

#Разворачиваем dump
mysql sample < example.sql

#Создаем dump из таблицы help_keywords первых 100 строк
mysqldump mysql help_keyword --where='TRUE ORDER BY help_keyword_id LIMIT 100'  > dump.sql

#Тут возник вопрос
#При использовании ключа -w, а не --where выдавалась синтаксическая ошибка.
#You have an error in your SQL syntax; 
#check the manual that corresponds to your MySQL server version
#for the right syntax to use near '=TRUE LIMIT 100' at line 1 (1064)
#Потом разобрался: в документации для версии 8 только --where.