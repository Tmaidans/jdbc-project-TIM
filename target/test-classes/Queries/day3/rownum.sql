select * from EMPLOYEES;

--limits the number of rows based on provided number
select * from EMPLOYEES
where rownum <11;

--TASK--display all information from employees salary on who is getting top 5 salaries
    --BAD PRACTICE --> first you cut first five and then order, not the other way
select * from EMPLOYEES
where rownum <6
order by SALARY desc ;

--CORRECT WAY--using sub query and then cutting off everything pas 5 rows
SELECT * from EMPLOYEES order by SALARY desc;

select *
from (SELECT * from EMPLOYEES order by SALARY desc)
where rownum <6;

--TEST-- display all information on who is getting 5th highest salary
select distinct SALARY from EMPLOYEES order by SALARY desc;

select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum <6;

--who is making 5th highest salary?

select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum <6);

--INTERVIEW QUESTIONS--find out who is making 37th highest salary
    --for the N'th highest salary formula is rownum <n+1
select distinct SALARY from EMPLOYEES order by SALARY desc;

select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum <38;

select * from EMPLOYEES
where  SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum <38);



