select * from EMPLOYEES;

/*
 Aggregate functions - multi rows - group functions
 - count --> it will count rows
 - max --> it will give us max value
 - min --> it will min value
 - sum --> it will give total value
 - avg --> it will give average value

 Aggregate functions takes multi row and return one result
 All of them ignore null values
 */

 select * from DEPARTMENTS;

 --how many departments we have?
select count(*) from DEPARTMENTS;

-- How many locations we have
select * from LOCATIONS;
select count(*)from LOCATIONS;

-- null values
select * from EMPLOYEES;
select count(DEPARTMENT_ID) from EMPLOYEES;

-- how many different first name we have?
select distinct FIRST_NAME from EMPLOYEES;
select count(distinct FIRST_NAME) from EMPLOYEES;

--how many employees working as IT_PROG or SA_REP

select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

--max
select max(SALARY) from EMPLOYEES;

--min
select min(SALARY) from EMPLOYEES;

--avg
select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),1) from EMPLOYEES;

--sum
select sum(SALARY) from EMPLOYEES;