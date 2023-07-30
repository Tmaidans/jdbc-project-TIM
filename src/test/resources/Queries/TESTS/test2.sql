--1. Display full addresses from locations table in a single column
select * FROM LOCATIONS;
select STREET_ADDRESS || POSTAL_CODE || CITY || STATE_PROVINCE as full_address from LOCATIONS;

--2. Display all informations of the employee who has the minimum salary in employees
--table
select min(SALARY) from EMPLOYEES; --2100

select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

--3. Display the second minimum salary from the employees
select distinct SALARY from EMPLOYEES order by 1;
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by 1) where ROWNUM <3;

--4. Display all informations of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by 1) where ROWNUM <3);
--5. List all the employees who are making above the average salary;
select avg(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES);

--6. List all the employees who are making less than the average salary
select avg(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY<(select avg(SALARY) from EMPLOYEES);
--7. Display manager name of 'Neena'
select * from EMPLOYEES;
select MANAGER_ID from EMPLOYEES
    where FIRST_NAME = 'Neena';
select FIRST_NAME, LAST_NAME from EMPLOYEES where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES
                                                                 where FIRST_NAME = 'Neena') ;

--8. Find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY desc;

select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <4;

select min(SALARY) from (select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                         where ROWNUM <4);



--9. Find the 5th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY desc;

select SALARY from (select distinct SALARY from EMPLOYEES
                    order by SALARY desc)
where ROWNUM<6;

select min(SALARY) from (select SALARY from (select distinct SALARY from EMPLOYEES
                                             order by SALARY desc)
                         where ROWNUM<6);

--10. Find the 7th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY desc;

select SALARY from (select distinct SALARY from EMPLOYEES
                    order by SALARY desc)
where ROWNUM<8;

select min(SALARY)from (select SALARY from (select distinct SALARY from EMPLOYEES
                                            order by SALARY desc)
                        where ROWNUM<8);

--11. Find the 10th maximum salary from the employees table (do not include duplicates)
select  distinct SALARY from EMPLOYEES
order by SALARY desc;

select  min(SALARY) from (select  distinct SALARY from EMPLOYEES
order by SALARY desc)
where ROWNUM <11;



--12. Find the 3rd minimum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY;

select max(SALARY) from (select distinct SALARY from EMPLOYEES
                    order by SALARY)
where ROWNUM<4;



--13. Find the 5th minimum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY;

select max(SALARY) from (select distinct SALARY from EMPLOYEES
                    order by SALARY)
where ROWNUM <6;

