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