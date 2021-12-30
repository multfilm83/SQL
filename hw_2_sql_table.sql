--SQL_DDL


--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.
insert into employees(id, employee_name)
values (default, 'Mikhail Kerzhakov'),
	   (default, 'Daniel Odoevskiy'),
	   (default, 'Stanislav Kritsuk'),
	   (default, 'Danil Krugovoy'),
	   (default, 'Yaroslav Rakitskiy'),
	   (default, 'Dmitriy Chistyakov'),
	   (default, 'Vyacheslav Karavaev'),
	   (default, 'Dejan Lovren'),
	   (default, 'Wilmar Barrios'),
	   (default, 'Magomed Ozdoev'),
	   (default, 'Kirill Kravtsov'),
	   (default, 'Aleksander Erokhin'),
	   (default, 'Andrey Mostovoy'),
	   (default, 'Wendel'),
	   (default, 'Claudinho'),
	   (default, 'Malcom'),
	   (default, 'Sardar Azmoun'),
	   (default, 'Artem Dzyuba'),
	   (default, 'Sergei Semak'),
	   (default, 'William de Oliveira'),
	   (default, 'Alexander Nizelik'),
	   (default, 'Anatoliy Tymoshchuk'),
	   (default, 'Mikhail Biryukov'),
	   (default, 'Ivan Karminate'),
	   (default, 'Andrea Scanavino'),
	   (default, 'Maxim Gaidovsky'),
	   (default, 'Vasili Galanin'),
	   (default, 'Mikhail Grishin'),
	   (default, 'Vladimir Hightin'),
	   (default, 'Pavel Pleshkov'),
	   (default, 'Pavel Skorik'),
	   (default, 'Alexander Ryzantsev'),
	   (default, 'Andrey Tsvetkov'),
	   (default, 'Maria Burova'),
	   (default, 'Alexi Mikhailov'),
	   (default, 'Anton Kostrovski'),
	   (default, 'Alexi Frolov'),
	   (default, 'Danila Khotulev'),
	   (default, 'Douglas Santos'),
	   (default, 'Aleksei Sutormin'),
	   (default, 'Daler Kuzyaev'),
	   (default, 'Vladimir Pavlov'),
	   (default, 'Georgiy Korolev'),
	   (default, 'Viktor Kovrijnikov'),
	   (default, 'Valeri Murzakov'),
	   (default, 'Arsene Zigangirov'),
	   (default, 'Andrei Mariyanov'),
	   (default, 'Matvei Troshchenkov'),
	   (default, 'Dmitri Bykov'),
	   (default, 'Evgeni Panteleychuk'),
	   (default, 'Vladislav Saus'),
	   (default, 'Elisey Emelyanov'),
	   (default, 'Daniil Stolyarov'),
	   (default, 'Ruslan Hailoev'),
	   (default, 'Savva Kotov'),
	   (default, 'Ilya Rodionov'),
	   (default, 'Kirill Khvastukhin'),
	   (default, 'Akim Belokhonov'),
	   (default, 'Alexander Emelyanov'),
	   (default, 'Roni Mikhaylovskiy'),
	   (default, 'Ivan Korshonov'),
	   (default, 'Nikita Luzan'),
	   (default, 'Nikita Shershov'),
	   (default, 'Evgeniy Pshennikov'),
	   (default, 'Denis Orlov'),
	   (default, 'Igor Kozlov'),
	   (default, 'Nikita Soloviev'),
	   (default, 'Dmitri Samartsev'),
	   (default, 'Kirill Stolbov'),
	   (default, 'Ilya Rukin');
	   
	  
select * from employees;


--Таблица salary
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);


--Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
select * from salary;

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default, 1, 1),
       (default, 2, 2),
       (default, 3, 3),
       (default, 4, 4),
       (default, 5, 5),
       (default, 6, 6),
       (default, 7, 7),
       (default, 8, 8),
       (default, 9, 9),
       (default, 10, 10),
       (default, 11, 11),
       (default, 12, 12),
       (default, 13, 13),
       (default, 14, 14),
       (default, 15, 15),
       (default, 16, 16),
       (default, 17, 1),
       (default, 18, 2),
       (default, 19, 3),
       (default, 20, 4),
       (default, 21, 5),
       (default, 22, 6),
       (default, 23, 7),
       (default, 24, 8),
       (default, 25, 9),
       (default, 26, 10),
       (default, 27, 11),
       (default, 28, 12),
       (default, 29, 13),
       (default, 30, 14),
       (default, 77, 15),
       (default, 88, 16),
       (default, 99, 1),
       (default, 100, 2),
       (default, 111, 3),
       (default, 122, 4),
       (default, 133, 5),
       (default, 144, 6),
       (default, 155, 7),
       (default, 166, 8);
     
select * from employee_salary; 

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:
insert into roles (id, role_name)
values (default, 'Junior Python developer'),
	   (default, 'Middle Python developer'),
	   (default, 'Senior Python developer'),
	   (default, 'Junior Java developer'),
	   (default, 'Middle Java developer'),
	   (default, 'Senior Java developer'),
	   (default, 'Junior JavaScript developer'),
	   (default, 'Middle JavaScript developer'),
	   (default, 'Senior JavaScript developer'),
	   (default, 'Junior Manual QA engineer'),
	   (default, 'Middle Manual QA engineer'),
	   (default, 'Senior Manual QA engineer'),
	   (default, 'Project Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer');

select * from roles;

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id)
			references employees (id),
		foreign key (role_id)
			references roles (id)
);

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (id, employee_id, role_id) 
values (default, 5, 3),
	   (default, 7, 5),
	   (default, 9, 7),
	   (default, 11, 9),
	   (default, 13, 11),
	   (default, 21, 15),
	   (default, 23, 17),
	   (default, 27, 19),
	   (default, 29, 20),
	   (default, 31, 1),
	   (default, 34, 2),
	   (default, 38, 4),
	   (default, 40, 6),
	   (default, 42, 8),
	   (default, 45, 10),
	   (default, 48, 12),
	   (default, 51, 14),
	   (default, 53, 16),
	   (default, 55, 18),
	   (default, 56, 13),
	   (default, 59, 1),
	   (default, 61, 3),
	   (default, 63, 5),
	   (default, 65, 7),
	   (default, 67, 9),
	   (default, 69, 11),
	   (default, 70, 13),
	   (default, 1, 15),
	   (default, 2, 17),
	   (default, 3, 19),
	   (default, 4, 2),
	   (default, 6, 4),
	   (default, 8, 6),
	   (default, 10, 8),
	   (default, 12, 10),
	   (default, 14, 12),
	   (default, 16, 14),
	   (default, 18, 16),
	   (default, 20, 18),
	   (default, 22, 20);

select * from roles_employee;