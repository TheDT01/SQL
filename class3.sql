use collage;

alter table student
add column age int not null default 19;


alter table student
change name full_name VARCHAR(50);

delete from student
where marks < 80;

alter table student
drop column grade;

select *FROM teacher;

set sql_safe_updates = 0;
TRUNCATE TABLE student;


