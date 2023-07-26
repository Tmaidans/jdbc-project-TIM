select *
from EMPLOYEES;

--TASK-- how many locations we have for each country
select COUNTRY_ID, count(*) as location_count
from LOCATIONS
group by COUNTRY_ID
order by 1;

--TASK--what if i want to see only us, uk and ca
select COUNTRY_ID, count(*) as location_count
from LOCATIONS
where COUNTRY_ID in ('US','UK','CA')
group by COUNTRY_ID
order by 1;

--TASK--display where location count is bigger than 2
select COUNTRY_ID, count(*) as location_count
from LOCATIONS
where COUNTRY_ID in ('US','UK','CA')
group by COUNTRY_ID
having count(*) >2
order by 1;

--TASK--display all employees salary in following format: as column name Employees_salary
select FIRST_NAME||' makes '||SALARY as Employees_salary
from EMPLOYEES;