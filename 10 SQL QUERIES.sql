/*q1*/
create database practice;
create table employee_details(
employee_id int,
employee_name varchar(30),
job_name varchar(20),
manager_id int,
hire_date date,
salary decimal(4,2),
commision decimal(4,2),
dept_id int,
primary key(employee_id));


insert into employee_details (employee_id,employee_name,job_name,hire_date,salary,dept_id) values (68319,"KAYLANG","PRESIDENT","1991-11-18",6000.00,1001);
insert into employee_details (employee_id,employee_name,job_name,manager_id,hire_date,salary,dept_id) values (69062,"FRANK","ANALYST",65646,"1991-12-03",3100.00,2001);
insert into employee_details (employee_id,employee_name,job_name,manager_id,hire_date,salary,dept_id) values (67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, 1001);
insert into employee_details (employee_id,employee_name,job_name,manager_id,hire_date,salary,dept_id) values (66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00,3001);
insert into employee_details (employee_id,employee_name,job_name,manager_id,hire_date,salary,dept_id) values (67858,"SCARLET","ANALYST",65646,"1997-04-19",3100.00,2001);
insert into employee_details (employee_id,employee_name,job_name,manager_id,hire_date,salary,dept_id) values (65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00,2001);

/*q2*/
select * from employee_details;

/*q3*/
alter table employee_details
drop column commision;

/*q4*/
alter table employee_details
add column commision float;

/*q5*/
update employee_details
set commision = 500.00
where dept_id = 1001 or dept_id = 3001;

/*q6*/
delete from employee_details
where job_name = "ANALYST";

/*q7*/
delete from employee_details
where job_name = "MANAGER" and employee_name = "CLARE";

/*q8*/
update employee_details
set job_name = "PRESIDENT"
where employee_id = 68319;

update employee_details
set manager_id = 68310
where job_name = "PRESIDENT";
/*q9*/
truncate table employee_details;
/*q10*/
drop table employee_details;
