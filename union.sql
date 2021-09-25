-- similar data type and count of columns

select first_name 
from employee 
UNION 
select branch_name
from branch
UNION
select client_name
from client;

select client_name, branch_id
from client
UNION
select supplier_name, branch_id
from branch_supplier;

select salary 
from employee
UNION
select total_sales
from works_with;