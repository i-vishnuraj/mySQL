select student.student_name, student.major
from student
order by student_id desc;

select *
from student
order by student_id asc;

select *
from student
order by major, student_id;

select *
from student
order by student_id desc
limit 2;

select *
from student
where major = 'Biochemistry' OR major <> 'Comp Sci';

-- <, >, <=, >=, =, <>, AND, OR

select *
from student
where major in ('Biochemistry', 'Comp Sci') and student_id > 2;
