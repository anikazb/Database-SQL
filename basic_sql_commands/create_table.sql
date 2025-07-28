USE college;

CREATE TABLE IF NOT EXISTS Students(
StudentID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(50),
CGPA DECIMAL(3,2),
Phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS instructors(
instructorID INT PRIMARY KEY,
Name VARCHAR(200),
Gender VARCHAR(10),
StartTime TIME,
EndTime TIME,
Phone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS college_employee(
employeeID INT PRIMARY KEY,
name VARCHAR(100),
salary DECIMAL(10,2),
`rank` VARCHAR(200), -- RANK IS THE RESERVED WORD FOR WINDOW FUNCTION SO I USE BACKTICKS ` `
city VARCHAR(20),
officeHour VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS rules_regulations(
rules_id INT PRIMARY KEY,
student_rules TEXT(1000),
instructor_rules TEXT(1000),
employee_rules TEXT(1000),
StudentID INT,
instructorID INT,
employeeID INT,
FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
FOREIGN KEY(instructorID) REFERENCES instructors(instructorID),
FOREIGN KEY(employeeID) REFERENCES college_employee(employeeID)
);


CREATE TABLE IF NOT EXISTS exam(
reg_num INT PRIMARY KEY,
StudentID INT ,
e_Name VARCHAR(100)
);


