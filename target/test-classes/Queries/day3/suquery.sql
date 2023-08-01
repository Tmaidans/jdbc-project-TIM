--Display all information who is making max salary
select max(SALARY) from EMPLOYEES; --24000

select *
from EMPLOYEES
where SALARY = 24000;

--!!!INTERVIEW QUESTION!!!--dynamic result - inner query runs first then runs the general query
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--TASK--give information on who is getting smallest salary
select *
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

--!!!INTERVIEW QUESTION!!!--display all information on who is making second highest salary.
    --find max salary
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);
    --find second max salary
    select max(SALARY)
    from EMPLOYEES
    where SALARY<24000;
    --who is making 17k
    select *
    from EMPLOYEES
    where SALARY =17000;
--ANSWER--dynamic
        select *
        from EMPLOYEES
        where SALARY =(select max(SALARY) from EMPLOYEES where SALARY<
                                                                        (select max(SALARY) from EMPLOYEES));

--TASK--display all information for people who make more than average salary
    --find average salary
select avg(SALARY) from EMPLOYEES;

    --find who is making above the dynamic average
select *
from EMPLOYEES
where SALARY> (select avg(SALARY) from EMPLOYEES)
order by SALARY;



