-- ON DELETE SET NULL for any foreign key

DELETE FROM employee 
where emp_id = 102;

select * from branch;

select * from employee;

/*since mgr id in branch is foreign key from employee when emp_id is deleted from
the employee table, the dependence are set to be NULL.
Similar effect on super_id in employee 
*/

-- ON DELETE CASCADE for composite primary key

DELETE FROM branch
where branch_id = 2;

select * from branch_supplier;

/*if foreign key is deleted in main table, same row is deleted in dependent table*/
