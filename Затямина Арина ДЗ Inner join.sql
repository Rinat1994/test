CREATE DATABASE phonebookdb;

use phonebookdb;

create table users (
	id int auto_increment primary key, 
	last_name varchar(30), 
	first_name varchar(30), 
	middle_name varchar(30)
);

create table phone_numbers (
	id int auto_increment primary key, 
	user_id int, 
    phone_number varchar(11),
	foreign key (user_id) references users (id)
);

alter table users
add age int not null,
modify last_name varchar(30) not null,
modify first_name varchar(30) not null,
modify middle_name varchar(30) not null;

insert into users (last_name, first_name, middle_name, age) values 
	('Иванов', 'Иван', 'Иванович', 35),
    ('Затямина', 'Арина', 'Олеговна', 33),
    ('Смирнов', 'Сергей', 'Сергеевич', 48),
    ('Петров', 'Александр', 'Андреевич', 18),
    ('Соколов', 'Дмитрий', 'Яковлевич', 60),
    ('Степанова', 'Катерина', 'Сергеевна', 42),
    ('Жданова', 'Елена', 'Павловна', 46),
    ('Кулагина', 'Татьяна', 'Константиновна', 50),
    ('Михайлов', 'Станислав', 'Михайлович', 54);
	
select * from users;	
	
insert into phone_numbers (user_id, phone_number) values 
	(4, '89099908999'),
    (9, '89110770737'),
    (2, '89028195991'),
    (2, '89088801444'),
    (1, '89028378534'),
    (3, '89142349898'),
    (7, '89111344512'),
    (2, '89214587134'),
    (5, '89146482356'),
    (8, '89037611209'),
    (7, '89992224455');

select * from phone_numbers;	
	
select u.id, u.last_name, u.age , pn.id, pn.user_id, pn.phone_number 
	from users as u
	inner join phone_numbers as pn on u.id = pn.user_id;
	
