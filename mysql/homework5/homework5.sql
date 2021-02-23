#1
update users set created_at = now() where id > 0;
update users set updated_at = now() where id > 0;
#or
update users set created_at = now() where created_at is null;
update users set updated_at = now() where updated_at is null;

#2
show fields from users;
alter table users modify column created_at datetime default current_timestamp;
alter table users modify column updated_at datetime default current_timestamp on update current_timestamp;
show fields from users;

#3
select value from storehouses_products order by
    if (value > 0, 0, 1), value;

#4
SELECT name, DATE_FORMAT(birthday_at, '%M') AS birthday_at FROM users
    where DATE_FORMAT(birthday_at, '%M') = 'May' OR DATE_FORMAT(birthday_at, '%M') = 'August';

#5
SELECT * FROM catalogs WHERE id IN (5, 1, 2);
SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by field(id, 5, 1, 2);

#Agregate functions
#1
select avg(FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at))/365.25)) as avg_age from users;
SELECT  avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS avg_age FROM users;

#2
select name, birthday_at, dayname(birthday_at) as old_dayname, DATE_FORMAT(birthday_at,'2021-%m-%d') as now_year, dayname(DATE_FORMAT(birthday_at,'2021-%m-%d'))  as dayname
    from users;
select dayname(DATE_FORMAT(birthday_at,'2021-%m-%d'))  as dayname, COUNT(dayname(DATE_FORMAT(birthday_at,'2021-%m-%d'))) as qwe from users group by dayname;

#3
select round(exp(sum(ln(value)))) as factorial from integers;
select round(exp(sum(log(value)))) as factorial from integers;