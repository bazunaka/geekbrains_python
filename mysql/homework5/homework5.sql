#1
update users set created_at = now() where id > 0;
update users set updated_at = now() where id > 0;

#2
show fields from users;
alter table users modify column created_at datetime;
alter table users modify column updated_at datetime;
show fields from users;

#3
select value from storehouses_products order by
    if (value > 0, 0, 1), value;

#4
SELECT name, DATE_FORMAT(birthday_at, '%M') AS birthday_at FROM users
    where DATE_FORMAT(birthday_at, '%M') = 'May' OR DATE_FORMAT(birthday_at, '%M') = 'August';