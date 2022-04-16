
select * from info

select *,emp_name+' '+city as full from 
select *, concat(emp_name,' ',city)as new from info

select convert(varchar,getdate())
select *,convert(varchar,doj) from doj

create table DOJ (id int, NAME varchar(20),DOJ datetime)

insert into DOJ values (1,'Mansa','2020-01-01 10:10:10')
insert into DOJ values (2,'Vasavi','2015-06-01 10:20:10')
insert into DOJ values (3,'Pravlika','2014-04-01 11:10:10')
insert into DOJ values (4,'Jyoti','2017-08-01 12:10:10')
insert into DOJ values (5,'Pushpa','2016-05-01 01:23:10')
insert into DOJ values (6,'Seema',GETDATE())
select * from DOJ
select * , convert(varchar,doj,1) from doj
select * , convert(varchar,doj,2) from doj
select * , convert(varchar,doj,3) from doj
select * , convert(varchar,doj,4) from doj
select * , convert(varchar,doj,5) from doj
select * , convert(varchar,doj,6) from doj
select * , convert(varchar,doj,7) from doj
select * , convert(varchar,doj,8) from doj
select * , convert(varchar,doj,9) from doj
select * , convert(varchar,doj,10) from doj


select round(12.56,1)