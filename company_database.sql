create table employee(
emp_id INT primary key,
first_name varchar(40),
last_name varchar(40),
birth_day DATE,
sex varchar(1),
salary INT,
super_id INT,
branch_id INT
);

create table branch(
branch_id int PRIMARY key,
branch_name VARCHAR(40),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE set null
);

alter table employee
add FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

alter table employee
add FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;


create table client(
client_id int PRIMARY key,
client_name VARCHAR(40),
branch_id int,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

create table works_with(
emp_id int,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

create table branch_supplier(
branch_id INT,
supplier_name VARCHAR(40),
supply_type VARCHAR(40),
PRIMARY KEY(branch_id, supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);


