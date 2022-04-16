--1.JOIN/Inner Join
--This join return the only matching records from Table

--Syntax:
--select */Column_name(s) from Table_Name1
--INNER JOIN /JOIN Table_Name2 
--ON Table_Name1.Column_name =Table_Name2.Column_name



Create Table d (Aid int, Name varchar(20))
Create Table e (Bid int, Name varchar(20),Aid int)
Create Table f (Cid int, Name varchar(20),Bid int)
select * from d
select * from e




insert Into d values(1,'Sam')
insert Into d values(2,'tom')
insert Into d values(3,'harry')
insert Into d values(4,'katich')
insert Into d values(5,'kate')


insert Into e  values(11,'harry',3)
insert Into e values(12,'katich',4)
insert Into e values(13,'kate',5)
insert Into e values(14,'mate',6)
insert Into e values(15,'sat',7)

insert Into f values(21,'harry',13)
insert Into f values(22,'katich',14)
insert Into f values(23,'kate',15)
insert Into f values(24,'mate',16)
insert Into f values(25,'sat',17)


select d.Aid,d.Name,e.Bid,f.Cid from d join e  ON d.Aid = e.Aid join f On e.Bid = f.Bid

create table d1(aid int)
create table e1(bid int)
insert into d1 values(1)
insert into d1 values(2)
insert into d1 values(3)
insert into d1 values(4)
insert into d1 values(5)

insert into e1 values(3)
insert into e1 values(4)
insert into e1 values(5)
insert into e1 values(6)
insert into e1 values(7)

select * from d1
select * from e1

select  * from d1 left join e1 on d1.aid=e1.bid
select  * from e1 left join d1 on d1.aid=e1.bid
select  * from d1 right join e1 on d1.aid=e1.bid
select  * from e1 right join d1 on d1.aid=e1.bid

select * from d1 full outer join e1 on d1.aid=e1.bid


create table EMP_new (id int, name varchar (10),Company varchar (10),Work varchar (10));
insert into EMP_new values (1,'Amit','Info','pune')
insert into EMP_new values (2,'Puja','Tcs','Mumbai')
insert into EMP_new values (3,'Poonam','Tech','Pune')
insert into EMP_new values (4,'Abhi','Logic','Nagpur')
insert into EMP_new values (5,'Kirti','Lim','Nagar')



create table Jobs (salary int,base varchar (10),id int)
insert into jobs values (10000,'Pune',1)
insert into jobs values (20000,'Mumbai',3)
insert into jobs values (30000,'Nagpur',4)
insert into jobs values (40000,'Pune',5)
insert into jobs values (35000,'Nagar',2)
select * from EMP_new

select * from Jobs;


select * from emp_new join jobs on emp_new.id=jobs.id
select *from EMP_new,jobs where EMP_new.id=jobs.id and EMP_new.work=jobs.base

create table SELF_TEST_EMP(EID int, ENAME varchar(20),ManagerID varchar(20))

insert into SELF_TEST_EMP values(1,'Shivam',2)
insert into SELF_TEST_EMP values(2,'krishna',4)
insert into SELF_TEST_EMP values(3,'meera',NULL)
insert into SELF_TEST_EMP values(4,'radha',2)
insert into SELF_TEST_EMP values(5,'bali',1)

select * from SELF_TEST_EMP as q ,SELF_TEST_EMP as r where q.eid=r.managerid

create table p1 (id varchar(10))
create table r1(id varchar(10))

insert into p1 values(1)
insert into p1 values(1)
insert into p1 values('null')
insert into r1 values(1)
insert into r1 values(1)
insert into r1 values(1)
insert into r1 values('null')
insert into r1 values('null')

select * from p1
select * from r1

select * from p1,r1 where p1.id=r1.id
select * from p1 cross join r1

create table std1(id int , sname varchar(10), city varchar(10) )
insert into std1 values(1,'rahul','pune')
insert into std1 values(2,'ram','nasik')
insert into std1 values(3,'priya','pune')
insert into std1 values(4,'swati','satara')
insert into std1 values(5,'namrata','ambad')
insert into std1 values(6,'rupali','nasik')
insert into std1 values(7,'sanket','nagar')
select * from std1
