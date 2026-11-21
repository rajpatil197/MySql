-- WHERE statement

select * from employee_salary where first_name = "Tom" ; 

select * from employee_salary where salary >= '50000';

select * from employee_salary where salary < '50000';

select * from employee_demographics where gender !='male';

select * from employee_demographics where birth_date > '1975-01-01';

-- Logical Operator like AND , OR ,NOT 

select * from employee_demographics where age > '35' AND gender = 'male';

select * from employee_demographics where age > '50' OR gender != 'male';

select * from employee_demographics where age > '50' OR NOT gender = 'male';

select * from employee_demographics where (first_name ='jerry' and age = 60) OR age > 40 ;

-- LIKE statement
-- % and _

select * from employee_demographics where first_name like 'a%';

select * from employee_demographics where birth_date like '1979%';

select * from employee_demographics where first_name like 'a___';

select * from employee_demographics where first_name like 'a___%';

