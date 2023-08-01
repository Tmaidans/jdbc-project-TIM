/*
    - Percent sign % --> for matching any sequence of characters (0 or more)
    - underscore _ --> for matching any single character (Jen__) will look for 2 more characters after

    - constans
    - starts with
    - ends with



--display all employess where first name starts with B
*/

SELECT *
from EMPLOYEES
WHERE FIRST_NAME like 'B%';

--dispaly all employees where first name starts with B and leth is 5 lettes

SELECT *
from EMPLOYEES
WHERE FIRST_NAME like 'B____';

--display 5 letter first name employee where middle name is Z

select *
from EMPLOYEES
where FIRST_NAME like '__z__';

--ends with 'e';

select * from EMPLOYEES
where FIRST_NAME like '%e';

--display all emplyes where job id contains IT

select * from EMPLOYEES
where JOB_ID like '%IT%';

--display all information where first name starts with H and ends with L

select * from EMPLOYEES
where FIRST_NAME like 'H%l';