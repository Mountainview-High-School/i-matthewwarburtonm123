-- Clear out the tables to reload the test data.
DELETE FROM Student;
DELETE FROM Class;
DELETE FROM StudentClass;
DELETE FROM Room;
DELETE FROM Building;
DELETE FROM Teacher;
DELETE FROM sqlite_sequence; -- This resets the AUTOINCREMENT sequences

INSERT INTO Student (first_name, last_name, date_of_birth)
VALUES 
("James","Brown", "1933-05-03"),
("Elvis","Presley", "1935-01-08"),
("Marilyn","Monroe", "1926-06-01"),
("Gene","Kelly", "1912-08-23"),
("Gene","Hackman", "1930-01-30");

SELECT *  FROM Student;

INSERT INTO Building (building_name)
VALUES 
("Library"),
("Himi"),
("Auditorium");

INSERT INTO Room (room_id, building_id)
VALUES
(43, 1),
(44, 1),
(80, 3);

INSERT INTO Teacher (teacher_name)
VALUES 
("Mr Weatherall"),
("Mr Jedd"),
("Mr Duncan");

INSERT INTO Class (class_name, level, teacher_id, room_id)
VALUES
("Digital Technology", 2,1,43),
("Drama", 2,2,44),
("Music", 2,3,80);

SELECT *  FROM Class;

INSERT INTO StudentClass (student_id, class_id)
VALUES
(1,1),(2,1),(3,1),(4,1),(5,1), -- Digi
(3,2),(4,2),(5,2), -- Drama
(1,3),(2,3),(4,3); -- Music

SELECT * 
FROM Student 
    INNER JOIN StudentClass 
        ON StudentClass.student_id = Student.student_id 
WHERE class_id = 1; -- These are the digitech students


SELECT * 
FROM StudentClass 
WHERE class_id in (SELECT class_id from Class where room_id = 80); -- These are the digitech students


SELECT first_name, last_name, date_of_birth, class_name, level, room.room_id, building_name, teacher_name 
FROM Student 
    INNER JOIN StudentClass 
        ON Student.student_id = StudentClass.student_id 
    INNER JOIN Class 
        ON Class.class_id = StudentClass.class_id
    LEFT JOIN Teacher 
        ON Class.teacher_id = Teacher.teacher_id
    LEFT JOIN Room 
        ON Class.room_id = Room.room_id
    LEFT JOIN Building 
        ON Room.building_id = Building.building_id
ORDER BY last_name, first_name;