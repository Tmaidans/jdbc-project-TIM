select * from CUSTOMER;

select * from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS,PHONE
from CUSTOMER join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--TEST-- what if i want to see custome table address_id information too.

select FIRST_NAME, LAST_NAME,CUSTOMER.ADDRESS_ID,address.ADDRESS_ID, ADDRESS,PHONE
from CUSTOMER join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID;