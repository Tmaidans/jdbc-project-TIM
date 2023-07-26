select * from EMPLOYEES;

/*
create table syntax
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constranints(optional)
        colName3 DataType Constrains,
        ...
    );
 */

 --- CREATE TABLE ---
create table scrumteam(
    emp_id INTEGER primary key,
    first_name varchar(30) not null,
    last_name varchar(20) not null,
    job_title varchar(20),
    salary integer
);

select * from scrumteam;

/*
 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2,...)
 */

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (1,'Severus','Snape','Tester',130000);

select * from scrumteam;

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (2,'Tim','Maidans','Tester',140000);

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (3,'Dingus','Fergusson','Developer',150000);

insert into scrumteam(emp_id, first_name, last_name, job_title, salary)
values (4,'Crack','McGee','Scrum Master',90000);

select *
from scrumteam;

commit;

/*
 UPDATE table_name
 SET column1 = value1,
 column2 = value2, ...
 WHERE condition;
 */
select * from scrumteam;

update scrumteam
set salary=11000
where emp_id = 3;

COMMIT;

/*
 DELETE FROM table_name
 WHERE condition;
 */

 delete from scrumteam
where emp_id = 4;

select * from scrumteam;

commit;

    --CRUD--
--CREATE (INSERT)
--READ (SELECT)
--UPDATE (UPDATE)
--DELETE (DELETE)

/*
 ALTER TABLE table_name action;

 ADD COLUMN - adds column
 DROP COLUMN - removes column
 RENAME COLUMN - renames the column name
 RENAME TO - renames the table name
 */

alter table scrumteam add gender varchar(10);

SELECT * FROM scrumteam;

update scrumteam
set gender = 'Male'
where emp_id =1;

--RENAME THE COLUMN--
alter table scrumteam rename column salary to annual_salary;

commit;

--DROP COLUMN--
alter table scrumteam drop column gender;
commit;

select * from scrumteam;

--RENAME TABLE--
alter table scrumteam rename to agileteam;

select * from agileteam;
commit;
                                            --INTERVIEW QUESTION--
    --TRUNCATE removes all data from table but leave table structure untouched--!!!
    --DROP TABLE --> REMOVES THE TABLE

--TRUNCATE
truncate table agileteam;

select * from agileteam;

drop table agileteam;

commit;

