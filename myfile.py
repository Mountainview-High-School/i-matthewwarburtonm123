import sqlite3
connection = sqlite3.connect("new.db")
cursor = connection.cursor()
cursor.execute("SELECT first_name, last_name FROM STUDENT")


students = cursor.fetchall()
print("ALL students")
for student in students:
    print(student[0]+" "+student[1])
connection.close()