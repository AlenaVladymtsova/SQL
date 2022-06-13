

/* 1)	������� ������� employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null */
create table employees(
id serial primary key,
employee_name varchar(50) not null
)

/*2)	��������� ������� employee 70 ��������. */
insert into employees (employee_name)
values ('Anna'),
       ('Alla'),
       ('Alina'),
       ('Anton'),
       ('Mihail'),
       ('Maria'),  
       ('Oleg'),
       ('Olga'),
       ('Polina'),
       ('Marina'),
       ('Alena'),
       ('Amelia'),
       ('Antonina'),
       ('Alexandr'),
       ('Dima'),
       ('Vera'),
       ('Anna_2'),
       ('Alla_2'),
       ('Alexandr_2'),
       ('Dima_2'),  
       ('Alina_2'),
       ('Anton_2'),
       ('Mihail_2'),
       ('Maria_2'),
       ('Oleg_2'),
       ('Olga_2'),
       ('Polina_2'),
       ('Marina_2'),
       ('Alena_2'),
       ('Amelia_2'),
       ('Antonina_2'),
       ('Mihail_3'),
       ('Maria_3'),  
       ('Oleg_3'),
       ('Olga_3'),
       ('Polina_3'),
       ('Marina_3'),
       ('Alena_3'),
       ('Amelia_3'),
       ('Antonina_3'),
       ('Eva'),
       ('Victoria'),
       ('Natalia'),
       ('Alisa'),
       ('Oksana'),
       ('Katerina'),
       ('Tatiana'),
       ('Ivan'),
       ('Artur'),
       ('Vadim'),
       ('Irina'),
       ('Daria'),
       ('Mia'),
       ('Sofia'),
       ('Sara'),
       ('Sandra'),
       ('Varvara'),
       ('Kirill'),
       ('Monika'),
       ('Kesha'),
       ('Max'),
       ('Alex'),
       ('Eva_2'),
       ('Victoria_2'),
       ('Natalia_2'),
       ('Alisa_2'),
       ('Oksana_2'),
       ('Katerina_2'),
       ('Tatiana_2'),
       ('Ivan_2'),
       ('Artur_2'),
       ('Vadim_2'),
       ('Irina_2'),
       ('Daria_2'),
       ('Mia_2'),
       ('Sofia_2'),
       ('Sara_2'),
       ('Sandr_2'),
       ('Varvara'),
       ('Kirill_2'),
       ('Monika_2'),
       ('Kesha_2'),
       ('Max_2'),
       ('Alex_2');
      
/*3)	������� ������� salary
- id. Serial  primary key,
- monthly_salary. Int, not null
 */      
create table salary (
     id serial primary key,
     montly_salary int not null
     )
/* 4)	��������� ������� salary 15 ��������*/       
insert into salary(montly_salary)
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
       
     /* 5)	������� ������� employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/
    create table employee_salary (
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null,
    foreign key(employee_id)
    references employees(id),
    foreign key(salary_id)
    references salary(id))
       
    /* 6)	��������� ������� employee_salary 40 ��������:
- � 10 ����� �� 40 �������� �������������� employee_id
*/
insert into employee_salary (employee_id, salary_id)
values (1,18),
       (2,14),
       (3,19),
       (4,14),
       (5,20),
       (6,17),
       (7,12),
       (8,12),
       (9,20),
       (10,11),
       (11,22),
       (12,23),
       (13,23),
       (14,15),
       (15,12),
       (16,14),
       (17,19),
       (18,14),
       (19,19),
       (20,24),
       (21,20),
       (22,17),
       (23,15),
       (24,12),
       (25,14),
       (26,21),
       (27,14),
       (28,19),
       (29,14),
       (30,20);
              
      /*7)	������� ������� roles
- id. Serial  primary key,
- role_name. int, not null, unique
 */
      create table roles (
      id serial primary key,
      role_name int not null unique
      )
/*8)	�������� ��� ������ role_name � int �� varchar(30) */    
alter table roles 
alter column role_name type varchar(30);    

/*9)	��������� ������� roles 20 �������� */
insert into roles (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
       
/* 10)	������� ������� roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
*/
create table roles_employee (
    id serial primary key,
    employee_id int not null unique,
    role_id int not null,
    foreign key(employee_id)
    references employees(id),
    foreign key(role_id)
    references roles(id)) 
    
   /* 11)	��������� ������� roles_employee 40 ��������*/
insert into roles_employee (employee_id, role_id)
values (1,2),
       (2,4),
       (3,6),
       (4,13),
       (5,8),
       (6,4),
       (7,15),
       (8,13),
       (9,20),
       (10,1),
       (11,12),
       (12,3),
       (13,13),
       (14,15),
       (15,5),
       (16,7),
       (17,17),
       (18,4),
       (19,19),
       (20,4),
       (21,20),
       (22,17),
       (23,15),
       (24,12),
       (25,14),
       (26,11),
       (27,14),
       (28,19),
       (29,14),
       (30,20),
       (31,6),
       (32,12),
       (33,10),
       (34,16),
       (35,18),
       (36,3),
       (37,13),
       (38,8),
       (39,7),
       (40,2);
