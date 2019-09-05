select *
from locations;
select employee_id "EMP#",first_name ||' '|| last_name  "Full Name",job_id "Job title", department_id as "Department ID"
from employees;
select distinct(job_id)
from employees;
select first_name ||' '|| last_name  "Full Name",'NUMBER:'|| phone_number || ' '|| 'MAIL:' || email "Contact Details"
from employees;
select *
from hotel;
select * 
from guest;
select roomno,price
from room
where type = 'S';
select guestname,guestaddress
from guest
where guestcity='London';
select *
from booking
where dateto = NULL;