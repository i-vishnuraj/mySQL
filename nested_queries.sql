select employee.first_name, employee.last_name
from employee
where employee.emp_id IN (
	select works_with.emp_id
	from works_with
	where works_with.total_sales > 30000
);


select client.client_name
from client
where client.branch_id = (
	select branch.branch_id
	from branch
	where branch.mgr_id = (
		select employee.emp_id 
		from employee
		where employee.first_name LIKE '%Michael%'
    )
    limit 1
);
