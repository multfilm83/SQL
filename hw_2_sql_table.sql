--SQL_DDL_Joins
--Таблица employees

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
	  
--Таблица employee_salary
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
insert into employee_salary 
values (default, 10, 8),
	   (default, 9, 2),
	   (default, 8, 3),
	   (default, 7, 4),
	   (default, 6, 5),
	   (default, 5, 6),
	   (default, 4, 7),
	   (default, 3, 8),
	   (default, 2, 9),
	   (default, 1, 10),
	   (default, 20, 11),
	   (default, 19, 12),
	   (default, 18, 13),
	   (default, 17, 14),
	   (default, 16, 15),
	   (default, 15, 1),
	   (default, 14, 2),
	   (default, 13, 3),
	   (default, 12, 4),
	   (default, 11, 5),
	   (default, 30, 6),
	   (default, 29, 7),
	   (default, 28, 8),
	   (default, 27, 9),
	   (default, 26, 10),
	   (default, 25, 11),
	   (default, 24, 12),
	   (default, 23, 13),
	   (default, 22, 14),
	   (default, 21, 15),
	   (default, 44, 1),
	   (default, 55, 2),
	   (default, 66, 3),
	   (default, 77, 4),
	   (default, 88, 5),
	   (default, 99, 6),
	   (default, 100, 7),
	   (default, 111, 8),
	   (default, 122, 9),
	   (default, 133, 10);

--Таблица roles
--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique	  
create table roles(
	id serial primary key,
	role_name int not null unique
);

-- Поменять тип столба role_name с int на varchar(30)
alter table roles1
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками:
insert into roles1 (id, role_name)
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
	   (default, 'Sales manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer'),
	   (default, 'CEO');

-- Таблица roles_employee
-- Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)  
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles1 (id)
);

-- Наполнить таблицу roles_employee 40 строками:
insert into roles_employee
values (default, 21, 1 ),
       (default, 9, 11 ),
       (default, 45, 9 ),
       (default, 38, 7 ),
       (default, 65, 1 ),
       (default, 32, 8 ),
       (default, 5, 2 ),
       (default, 13, 12 ),
       (default, 15, 4 ),
       (default, 20, 3 ),
       (default, 25, 6 ),
       (default, 4, 13 ),
       (default, 1, 10 ),
       (default, 16, 14 ),
       (default, 23, 3 ),
       (default, 22, 5 ),
       (default, 12, 7 ),
       (default, 18, 9 ),
       (default, 19, 10 ),
       (default, 29, 13 );
      
 

	  
