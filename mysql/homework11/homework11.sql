#1-1

create table logs (
    created_at datetime not null ,
    name_table varchar(100) not null ,
    pk_id int not null ,
    value_name varchar(100) not null
) engine = ARCHIVE;

delimiter //
create trigger log_users after insert on users
    for each row
    begin
        insert into logs() values (NOW(), 'users', NEW.id, NEW.name);
    end //
delimiter ;

delimiter //
create trigger log_catalogs after insert on catalogs
    for each row
    begin
        insert into logs() values (NOW(), 'catalogs', NEW.id, NEW.name);
    end //
delimiter ;

delimiter //
create trigger log_users after insert on products
    for each row
    begin
        insert into logs() values (NOW(), 'products', NEW.id, NEW.name);
    end //
delimiter ;

#1-2

create table test_users (
    id serial primary key ,
    name varchar(100) ,
    created_at datetime default current_timestamp
);

delimiter //
create procedure insert_into_test_users ()
    begin
        declare i int default 1000001;
        declare j int default 0;
        while i > 0 do
            insert into test_users(name) values (concat('user_', j));
            set j = j + 1;
            set i = i - 1;
            end while ;
    end //
delimiter ;