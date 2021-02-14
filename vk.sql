#create database vk;
#use vk;

create table users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL UNIQUE,
	phone VARCHAR(30) NOT NULL UNIQUE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table profiles (
	user_id INT UNSIGNED NOT NULL PRIMARY KEY,
	gender CHAR(1),
	birthday DATE,
	city VARCHAR(100),
	country VARCHAR(100),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE messages (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	from_user_id INT UNSIGNED NOT NULL,
	to_user_id INT UNSIGNED NOT NULL,
	body TEXT NOT NULL,
	is_important BOOLEAN,
	is_delivered BOOLEAN,
	created_at DATETIME DEFAULT NOW(),
);

CREATE TABLE friendship (
	user_id
	friend_id
	status_id
	requested_at
	confirmed_at
	created_at
	updatetd_at
);
