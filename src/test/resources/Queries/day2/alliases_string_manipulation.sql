select * from EMPLOYEES;

--column aliases is used to temporarily display desired name of the column.
SELECT JOB_ID, round(avg(SALARY)) as "Average salary"
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000
order by 2;

SELECT JOB_ID, round(avg(SALARY)) as Average_salary
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000
order by 2;


-- TASK -- manager is asking to display annyal salary and first name for every employee
SELECT FIRST_NAME, SALARY*12 as Annual_Salary
from EMPLOYEES;

--------------------------------String manipulation in sequel---------------------------------------------

/*
        CONCAT:
            -- Java --> + ex: first_name+" "+last_name
            -- SQL --> || ex: first_name||' '||last_name

 */


-- TASK --  i want to get full column name where firstname+" "+last name
select FIRST_NAME||' '||LAST_NAME as full_name
from EMPLOYEES;


-- TASK -- add @cydeo.com to all the emails in email table
select EMAIL||'@cydeo.com' as complete_email
from EMPLOYEES;

select concat(EMAIL,'@cydeo.com') as complete_email
from EMPLOYEES;

--lower
select lower(EMAIL||'@cydeo.com') as complete_email
from EMPLOYEES;

--upper
select upper(EMAIL||'@cydeo.com') as complete_email
from EMPLOYEES;

--INITCAP - makes first letter upper and rest lower
select initcap(EMAIL||'@cydeo.com') as complete_email
from EMPLOYEES;

-- get char LENGTH
select EMAIL, length(EMAIL) as email_length from EMPLOYEES;

-- TASK -- display all employees where first name length equals to 6
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES
where length(FIRST_NAME) = 6;

-- TASK -- another solution
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '______';

-- TASK -- how many people do we have with first name lenght
select count(*) from EMPLOYEES
where FIRST_NAME like '______';

--display initials from first name and last name
--SUBSTr(column name, first index, num of characters)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as innitials from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as innitials from EMPLOYEES;

--how to start from the end
select FIRST_NAME, substr(FIRST_NAME,-2,2) from EMPLOYEES;
select FIRST_NAME, substr(FIRST_NAME,-3) from EMPLOYEES;