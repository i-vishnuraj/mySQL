INSERT INTO student values(1, 'Jack', 'Biology');
INSERT INTO student values(2, 'Kate', 'Sociology');
/*INSERT INTO student(student_id, student_name) values(3, 'Claire');*/
INSERT INTO student values(3, 'Claire', 'Chemistry');
INSERT INTO student values(4, 'Jack', 'Biology');
INSERT INTO student values(5, 'Mike', 'Computer Science');

select * from student;

drop table student;

update student 
set student_name  = 'Tom', major = 'undecided'
where student_id = 1;

delete from student
where student_id= 5;