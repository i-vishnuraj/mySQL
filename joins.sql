insert INTO branch values(4, 'Buffalo', NULL, NULL);

-- INNER JOIN
select branch.branch_name, employee.first_name, employee.last_name
from employee
JOIN
branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN
select branch.branch_name, employee.first_name, employee.last_name
from employee
LEFT JOIN
branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN
select branch.branch_name, employee.first_name, employee.last_name
from employee
RIGHT JOIN
branch
ON employee.emp_id = branch.mgr_id;

-- FULL OUTER JOIN combination of Left and right join