select * from CUSTOMER;

select * from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS,PHONE
from CUSTOMER join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--TEST-- what if i want to see custome table address_id information too.

select FIRST_NAME, LAST_NAME,CUSTOMER.ADDRESS_ID,address.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Table Alliases
--CUSTOMER--> C
--EMPLOYEES--> E
--ADDRESS -->

             --!!!Inner join only produces matching data from both tables, stuff tant intersects!!!--
select FIRST_NAME, LAST_NAME,C.ADDRESS_ID,a.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER c inner join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

--inner join and join is same syntax
select FIRST_NAME, LAST_NAME,C.ADDRESS_ID,a.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER c inner join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

                                        --!!!!LEFT OUTER JOIN!!!!--
--left outer join / left join
--it will give matching part between two tables + inique for left table
--the order of the table is important
select FIRST_NAME, LAST_NAME,C.ADDRESS_ID,a.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER c left outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

                                            --!!!!RIGHT OUTER JOIN!!!!--
--right outer join
select FIRST_NAME, LAST_NAME,C.ADDRESS_ID,a.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER c right outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

                                            --!!!!FULL OUTER JOIN!!!!--
select FIRST_NAME, LAST_NAME,C.ADDRESS_ID,a.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER c full outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID; --->1-3 is INNER JOIN; -->4-5 RIGHT OUTER -->6-7 LEFT OUTER

