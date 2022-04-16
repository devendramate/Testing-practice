create table account_details(acct_number int primary key identity(11112881,1),acct_name varchar (20),acct_open_date date,branch varchar (20))

insert into account_details values('shubham', '2015/12/09','mumbai')
insert into account_details values('rihan', '2016/01/12','jaipur')
insert into account_details values('shital', '2017/08/11','goa')
insert into account_details values('priyanka', '2017/01/01','chennai')
insert into account_details values('manik', '2015/01/08','agrai')
insert into account_details values('veena', '2021/01/01','patna')
insert into account_details values('rohan', '2019/07/01','pune')
insert into account_details values('laxmi', getdate(),'rohatak')
insert into account_details values('jinal', getdate(),'indore')
 select * from account_details


 select *,datepart(dy,acct_open_date)as date_1 from account_details where datepart(dy,acct_open_date)='01'

 select *,dateadd(yy,10,acct_open_date) as newdate from account_details

 select * from account_details where acct_name not in('rihan','manik')
 select dateadd(yy,-40,getdate())

 select * from employeee;
 select * from employeee where salary between 15000 and 25000

 create table employees(eid int primary key identity (101,1), ename varchar(10), dept varchar(10),salary int, hiring_date varchar(15))

 insert into employees values('ramesh', 'QA',20000, '26/02/2015')
  insert into employees values('rahul', 'Prod',22000, '20/12/2018')
 insert into employees values('priya', 'QA',25000, '26/06/2019')
 insert into employees values('anjali', 'purchase',24000, '01/02/2020')
 insert into employees values('swati', 'ACC',28000, '06/02/2019')
 insert into employees values('ragini', 'Store',30000, '16/01/2021')

 select * from employees
 select *from employees where salary between 22000 and 28000
  select *from employees where salary<25000 and hiring_date!='26/02/2015'
  select * from employees where dept in('qa','purchase') and salary>22000
  select * from t1
  delete t1
  drop table t1

  select * from t2
  delete t2 where marks=45

  select min(salary)as min_salary from employees
    select max(salary)as max_salary from employees
	  select avg(salary)as min_salary from employees
	    select count(salary) from employees
		  select * from employees order by salary desc
		  select distinct(dept)  from employees

--foreign key

create table departments(did int primary key identity, dept varchar(10))

insert into departments values('civil')
insert into departments values('mech')
insert into departments values('it')
insert into departments values('entc')

create table students(s_id int primary key identity , s_name varchar(15),did int foreign key references departments(did))

insert into students values('pravin',2)
insert into students values('amit',1)
insert into students values('ronit ',2)
insert into students values('meena',4)
insert into students values('amol',2)
insert into students values('shanmuk0a',2)
insert into students values('amol',2)


select * from departments
select * from students
