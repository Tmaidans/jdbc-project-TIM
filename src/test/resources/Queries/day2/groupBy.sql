select * from EMPLOYEES;

--your manager is asking all jobs and their average salary.

select distinct JOB_ID from EMPLOYEES;

--average salary for it programmers
select Avg (SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

--average salary for 'AC_ACCOUNT'
select Avg (SALARY) from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT';

-- group by job id, and show all requested specifications.
select JOB_ID, avg (SALARY), count(*), sum(SALARY), min(SALARY)
from EMPLOYEES
group by JOB_ID;

--display how many departments we have in each location
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID;

--order result based on number of departments in desc
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by count(*) desc;

--order by column name instead of name of the column.
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by 2 desc;

--display how many countries we have in each region
select * from COUNTRIES;

select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by 2 desc ;

--get me total salary for each department from employees table
select * from EMPLOYEES;
select DEPARTMENT_ID, sum(SALARY),count(*)
from EMPLOYEES
group by DEPARTMENT_ID
order by 2;

select DEPARTMENT_ID, sum(SALARY),count(*)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by 2;

