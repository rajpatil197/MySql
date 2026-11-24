-- Joins

SELECT * FROM employee_demographics;

select * from employee_salary;

-- Inner join

select * from employee_demographics 
inner join employee_salary 
on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_demographics as demo
inner join employee_salary as sal
on demo.employee_id = sal.employee_id;

select demo.first_name,demo.last_name,age,occupation,salary 
from employee_demographics as demo 
inner join employee_salary as sal
on demo.employee_id = sal.employee_id;

-- Outer Join 

-- Left Join

select * from employee_demographics as demo
left join employee_salary as sal
on demo.employee_id = sal.employee_id;

-- Right Join

select * from employee_demographics as demo
right join employee_salary as sal
on demo.employee_id = sal.employee_id;

-- Self Join 

select * from employee_demographics as demo
join employee_salary as sal
on demo.employee_id +1 = sal.employee_id; 

select demo.employee_id as emp_santa,
demo.first_name as first_name_santa,
demo.last_name as last_name_santa,
sal.employee_id as emp_name,
sal.first_name as first_name_emp,
sal.last_name as last_name_emp
from employee_demographics as demo
join employee_salary as sal
on demo.employee_id +1 = sal.employee_id; 


-- Joining Multiple Tables Together

select * from parks_departments;

select * from employee_demographics as demo
inner join employee_salary as sal
on demo.employee_id = sal.employee_id 
inner join parks_departments as dep
on sal.dept_id = dep.department_id;

select * from employee_demographics as demo
right join employee_salary as sal
on demo.employee_id = sal.employee_id 
inner join parks_departments as dep
on sal.dept_id = dep.department_id;