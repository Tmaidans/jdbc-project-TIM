select *
from EMPLOYEES;

--TASK--display all first_name and related department_name
select FIRST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e
         join DEPARTMENTS d
              on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--TASK--order list based on first name ascending
select FIRST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
order by FIRST_NAME;

--TASK--display all first_name and department_name including employees without department
select FIRST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--TASK 3--display first name and department name including the department without employee
select FIRST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--Task 4--How many employees we have for each department name
select  DEPARTMENT_NAME, count (*)
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME;

--Task 4--How many employees we have for each department name
select  DEPARTMENT_NAME, count (*)
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME;

--TASK 5 -- display all first name and department name including the department without employees and
         -- also employees without the department
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES full outer join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--TASK6 -- display all cities and country names
select * from LOCATIONS;
select * from  COUNTRIES;

select CITY, COUNTRY_NAME
from LOCATIONS join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

--TASK7 display all cities and related country names including without city
select CITY, COUNTRY_NAME
from LOCATIONS right outer join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

--TASK8 display all department name and related street addresses
select DEPARTMENT_NAME, STREET_ADDRESS
from DEPARTMENTS join LOCATIONS
on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;

--TASK9 display first name, last name, department name and city for all employees
select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID =d.DEPARTMENT_ID
join LOCATIONS l on  d.LOCATION_ID = l.LOCATION_ID;

select * from COUNTRIES;
--TASK10 display country name as well
select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME,CITY, COUNTRY_NAME
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID =d.DEPARTMENT_ID
join LOCATIONS l on  d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

--TASK11 how many employees working for each country name
select COUNTRY_NAME, count(*)
from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID =d.DEPARTMENT_ID
                 join LOCATIONS l on  d.LOCATION_ID = l.LOCATION_ID
                 join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>10;

--left join with where --> you look at right table and see if item there is NULL to find a unique element from left table
--Since there is nothing matching left table to right, right value will always be null for all unique elements
SELECT * FROM CUSTOMER c
left join ADDRESS A on A.ADDRESS_ID = c.ADDRESS_ID
where a.ADDRESS_ID is null;

--get all unique elements
SELECT * FROM CUSTOMER c
                  full join ADDRESS A on A.ADDRESS_ID = c.ADDRESS_ID
where a.ADDRESS_ID is null or c.ADDRESS_ID is null;