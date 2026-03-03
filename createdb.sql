-- SQLite
-- cleanup old tables

PRAGMA foreign_keys = ON;

drop table if exists Student;
drop table if exists Class;
drop table if exists StudentClass;
drop table if exists Room;
drop table if exists Teacher;
drop table if exists Building;


CREATE TABLE Student 
( 
student_id INTEGER CONSTRAINT PK_Student PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
date_of_birth DATE NOT NULL
);

CREATE TABLE Teacher (
teacher_id INTEGER PRIMARY KEY AUTOINCREMENT, 
teacher_name TEXT NOT NULL
);

CREATE TABLE Building (
building_id INTEGER PRIMARY KEY AUTOINCREMENT,
building_name TEXT NOT NULL
);


CREATE TABLE Room (
room_id INTEGER PRIMARY KEY, 
building_id INTEGER NOT NULL,
FOREIGN KEY (building_id) REFERENCES Building (building_id)
);


CREATE TABLE Class 
(
class_id INTEGER CONSTRAINT PK_Class PRIMARY KEY AUTOINCREMENT,  
class_name TEXT NOT NULL,
level INTEGER NULL,
room_id INTEGER NULL, 
teacher_id INTEGER NULL ,
FOREIGN KEY (room_id) REFERENCES Room (room_id),
FOREIGN KEY (teacher_id) REFERENCES Teacher (teacher_id)
);


CREATE TABLE StudentClass 
(
student_id INTEGER NOT NULL, 
class_id INTEGER NOT NULL,
CONSTRAINT PK_StudentClass PRIMARY KEY (student_id, class_id),
FOREIGN KEY (student_id) REFERENCES Student (student_id),
FOREIGN KEY (class_id) REFERENCES Class (class_id)
);


