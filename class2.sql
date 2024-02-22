create database collage;
use collage;

create table student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade Varchar(1),
  city Varchar(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)

values
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 96, "A", "delhi"),
(105, "emanuel", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");

SELECT city
FROM student
WHERE grade = "A"
group by city
having MAX(marks) >=93
order by city DESC;

set sql_safe_updates = 0;

UPDATE student
set grade = "O"
WHERE GRADE = "A";

UPDATE student
set marks = 12
where rollno = 105;

UPDATE student
SET marks = marks+1;

delete FROM student where marks < 33;

select *FROM student;



