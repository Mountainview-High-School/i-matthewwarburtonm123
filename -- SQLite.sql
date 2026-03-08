-- SQLite
--1

select * from student order by date_of_birth;

--2

select * from student WHERE first_name = 'Gene';

--3

select * from student WHERE last_name LIKE "%y";

--4

Select * from class WHERE NOT class_name = '44';
--5
SELECT * from class WHERE class_name = '44' OR class_name = '43';
--6 
SELECT * FROM class WHERE class_name