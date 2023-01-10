select * from EMPLOYEES;

--your manager is asking all jobs and their average salary.

select distinct JOB_ID from EMPLOYEES;

--average salary for it programmers
select Avg (SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

--average salary for 'AC_ACCOUNT'
select Avg (SALARY) from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT';

-- group ny job id, and show all requested specifications.
select JOB_ID, avg (SALARY), count(*), sum(SALARY), min(SALARY)
from EMPLOYEES
group by JOB_ID;

