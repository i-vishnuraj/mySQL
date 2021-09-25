create table student(
	student_id INT auto_increment, 
    student_name varchar(20) not null,
    major varchar(20),  /* default 'undecided',unique*/
    primary key(student_id) 
);

DESCRIBE student;

drop table student;

alter table student add gpa decimal(3,2);

alter table student drop column gpa;