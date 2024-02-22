create database collage2;
use collage2;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student (id, name)
VALUES
(101,"adam" ),
(102,"bob"),
(103,"casey");


CREATE TABLE course (
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(102, "english"),
(105, "math" ),
(103, "science" ),
(107, "CSE");

select *from student;
select *FROM course;

select *
FROM student as a
LEFT JOIN COURSE as b
ON a.id = b.id
UNION
SELECT *FROM student as a
RIGHT JOIN course as b
on a.id = b.id;


select *
FROM student as a 
RIGHT join course as b
on a.id = b.id
where a.id is null;

