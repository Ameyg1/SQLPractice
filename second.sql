--Using HR Database
select first_name ||' '|| last_name "FULL NAME", job_id "job title",salary "SALARY"
from employees
where salary>10000;
-- Salary greater than 10000
select first_name ||' '|| last_name "FULL NAME", job_id "job title",salary "SALARY"
from employees
where salary between 5000 and 12000;
-- Salary between 5000 and 12000
select first_name ||' '|| last_name "FULL NAME",job_id "job title", hire_date "Start Date"
from employees 
where last_name='Hutton' or last_name='Austin';
--Report for specific employees
select street_address "ADDRESS",postal_code "Postal Code",city "CITY"
from locations
where country_id ='JP' or country_id='IT';
--selec offices from japan or italy
select sysdate from dual;
select first_name ||' '|| last_name "FULL NAME",'Phone:'||phone_number||' '||'Email:'||email "Contact Details"
from employees
where hire_date between '01/01/1996' and '31/01/1996'
order by last_name;
--Employees hired in january
-- select sysdate from dual gives the system date 
select first_name ||' '|| last_name "FULL NAME",'Phone:'||phone_number||' '||'Email:'||email "Contact Details"
from employees
where hire_date > '31/12/1996'
order by hire_date desc;
--hiredate after 31/12/1996 
select *
from employees 
where first_name like 'S%n';
--Start with S end with n
select *
from employees
where job_id in ('AC_MGR', 'AD_VP',' FI_MGR', 'HR_REP',
'PR_REP');
--Holding these job titles
select *
from employees
where job_id not in ('AC_MGR', 'AD_VP',' FI_MGR', 'HR_REP',
'PR_REP');
--- Not holding these job ids
select e.employee_id,e.last_name,e.salary,d.department_name
from employees e,departments d
where e.department_id=d.department_id and e.manager_id=&man_id;
--Report for specific manager employees
--Using HR dataset
select *
from room
where price >40
order by type,price asc;
--Price greater than 40 and order by type and price
select guestName,guestAddress
from guest
where guestAddress='8 Mount St., Auckland CBD, 1010, NZ';
-- List name address of who live at AUT accomodation