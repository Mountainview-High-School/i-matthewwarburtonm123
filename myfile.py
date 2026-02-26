@startuml
' config
hide circle

entity "student" {
student_id: INTEGER
--
first_name: TEXT
last_name: TEXT
date_of_birth: DATE

  }


entity "class" {
class_id:PK
Name: TEXT
teacher_id: INTEGERS
level: TEXT
room: 01

}

note right
 <b>Note</b>
 this is the class table it needs to be normilised.
end note

student ||--{ clas