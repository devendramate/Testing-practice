create table set11(s_id int,s_name varchar(10));
create table set22(s_id int,s_name varchar(10));

insert into set11 values(1,'ab');
insert into set11 values(2,'cd');
insert into set11 values(3,'ef');
insert into set11 values(4,'gh');
insert into set22 values(5,'ij');
insert into set22 values(6,'kl');
insert into set22 values(7,'mn');
insert into set22 values(8,'op');
insert into set22 values(1,'Ap');
insert into set22 values(4,'gh');

select * from set11;
select * from set22;

select * from set11 union select * from set22;
select * from set11 union all select * from set22;
select * from set11 intersect select * from set22;
select * from set11 except select * from set22;
select * from set22 except select * from set11;

select getdate()-5
---home work


select * from employee;
select * from employee where emp_name!='pooja';
select emp_name , sum(salary) as new from employee group by emp_name having sum(salary)>25000;
select * from employee order by salary desc;






