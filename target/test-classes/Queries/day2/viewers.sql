select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as innitials,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

--creating view (a temporary table that can be access for later)
create view employeeinfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as innitials,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

--retrieve info from temporary table
select * from employeeinfo;
select  innitials from employeeinfo;

--drop view - delete
drop view employeeinfo;