---------UC1------------

------------Create Database---------

create database payroll_service;

use payroll_service;

--------------UC2--------------

--------Create Tabel------------

create table employee_payroll
(
empId int identity(1,1) primary key,
name varchar(20) not null,
salary float,
startDate date,
emailId varchar(20)
);

-------------UC3 Inserting the values in table-----------

Insert into employee_payroll values ('Ashok',70000,'2021-05-15','ashok32@gmail.com'),('Karthick',55000,'2021-02-13','karthi21@gmail.com'),('Gayatri',45000,'2021-07-13','gaya@gmail.com'),('Divya',30000,'2021-08-23','divya2000@gmail.com');

-------------------UC4--------------------

select * from employee_payroll;

------------------UC5----------------

select name,salary from employee_payroll where name='Karthick';

select name,salary from employee_payroll where startDate between ('2021-02-01') and getdate();

------------------UC6---------------------

alter table employee_payroll add Gender char(1);

update employee_payroll set Gender='M' where name='Ashok' or name='Karthick';

update employee_payroll set Gender='F' where name='Gayatri' or name='Divya';


