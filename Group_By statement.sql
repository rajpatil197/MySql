-- Group By 

select * from employee_demographics;

select gender , avg(age)
from employee_demographics group by gender ;

select gender , avg(age) , max(age) , min(age) , count(age)
from employee_demographics group by gender ;

select * from employee_salary;

select dept_id , avg (salary) 
from employee_salary group by dept_id; 

-- ORDER BY

select * from employee_demographics;
select * from employee_demographics order by first_name asc;

select * from employee_demographics order by first_name desc;

select * from employee_demographics order by gender , age ; 

select * from employee_demographics order by gender , age desc;


 
