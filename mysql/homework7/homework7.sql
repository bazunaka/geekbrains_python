#1
insert into orders (id, user_id, created_at, updated_at) values (1, 5, '2019-06-26', '2020-08-03');
insert into orders (id, user_id, created_at, updated_at) values (2, 2, '2019-03-15', '2021-01-04');
insert into orders (id, user_id, created_at, updated_at) values (3, 4, '2019-01-05', '2020-08-05');
insert into orders (id, user_id, created_at, updated_at) values (4, 2, '2018-08-31', '2020-04-16');
insert into orders (id, user_id, created_at, updated_at) values (5, 4, '2018-08-23', '2021-01-16');
insert into orders (id, user_id, created_at, updated_at) values (6, 1, '2019-07-15', '2020-04-26');
insert into orders (id, user_id, created_at, updated_at) values (7, 1, '2020-01-06', '2020-02-09');
insert into orders (id, user_id, created_at, updated_at) values (8, 5, '2018-07-06', '2020-10-02');
insert into orders (id, user_id, created_at, updated_at) values (9, 2, '2018-06-12', '2020-01-31');
insert into orders (id, user_id, created_at, updated_at) values (10, 2, '2019-05-17', '2020-09-07');

insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (1, 8, 3, 8, '2018-05-02', '2020-10-30');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (2, 8, 4, 8, '2020-01-17', '2020-04-29');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (3, 10, 5, 4, '2018-12-10', '2020-10-16');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (4, 2, 3, 5, '2019-11-19', '2020-03-05');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (5, 4, 4, 6, '2019-02-08', '2021-01-30');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (6, 8, 1, 2, '2019-01-24', '2020-09-02');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (7, 5, 2, 8, '2019-07-20', '2020-05-29');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (8, 9, 7, 8, '2019-04-20', '2020-07-31');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (9, 7, 1, 5, '2019-08-13', '2020-08-24');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (10, 3, 1, 10, '2018-05-04', '2020-11-27');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (11, 4, 2, 1, '2019-05-22', '2019-11-27');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (12, 3, 7, 5, '2018-03-02', '2020-06-29');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (13, 6, 1, 4, '2019-10-09', '2020-05-13');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (14, 1, 4, 1, '2018-03-25', '2021-01-26');
insert into orders_products (id, order_id, product_id, total, created_at, updated_at) values (15, 3, 1, 7, '2019-07-29', '2020-02-21');

SELECT
	u.id AS user_id, u.name,
	o.id AS order_id
FROM
	users AS u
RIGHT JOIN
	orders AS o
ON
	u.id = o.user_id; #user_id 1 и 6 не сделали ни одного заказа