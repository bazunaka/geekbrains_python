#1-1
INSERT INTO sample.users SELECT * FROM shop_online.users WHERE id = 1;

#1-2
CREATE VIEW prods(prod_id, prod_name, cat_name) AS
SELECT p.id as prod_id, p.name, cat.name
FROM products as p
LEFT JOIN catalogs as cat 
ON p.catalog_id = cat.id;

#1-3

#1-4
CREATE TABLE datetbl (
	created_at DATE
);

INSERT INTO datetbl VALUES
	('2018-08-01'),
	('2018-08-02'),
	('2018-08-04'),
	('2018-08-12'),
	('2018-08-14'),
	('2018-08-17'),
	('2018-08-23'),
	('2018-08-27'),
	('2018-08-29'),
	('2018-08-31');

SELECT created_at AS below_5 FROM datetbl
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM datetbl
		ORDER BY created_at DESC
		LIMIT 5) AS foo) ORDER BY created_at DESC;

#2-1
GRANT SELECT ON shop.* TO 'shop_reader'@'localhost';
GRANT ALL ON shop.* TO 'shop'@'localhost';

#2-2

#3-1
delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT 'Добрый вечер';
		ELSE
			SELECT 'Доброй ночи';
	END CASE;
END //
delimiter ;

CALL hello();