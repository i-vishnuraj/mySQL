select count(emp_id) from employee;
select count(super_id) from employee;

select count(emp_id) from employee 
where sex = 'F' and birth_day > '1970-01-01';

select AVG(salary) from employee
where sex = 'M';

select SUM(salary) from employee
where sex = 'M';

select COUNT(sex), sex 
from employee
group by sex;

select emp_id, sum(total_sales) from works_with group by emp_id;

select client_id, sum(total_sales) from works_with group by client_id;


