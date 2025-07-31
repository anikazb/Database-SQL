-- join (match)
-- joining to table if somthing is same


SELECT Students.StudentID,reg_num,e_Name,Name,Email,CGPA,Phone
FROM Students,exam
WHERE Students.StudentID=exam.StudentID;

-- also you specify from which table you want to show details 
-- like exam.reg_num

-- use join ,on
-- ITS MORE STANDARD 

SELECT Students.StudentID,reg_num,e_Name,Students.Name,Email,CGPA,Phone
FROM Students JOIN exam
ON Students.StudentID=exam.StudentID;


-------------------------------------------------------------------------------------------------


-- INNER JOIN(match)
-- IT MEANS SPOUSE YOU ALREADY JOIN TABLES BUT LATER YOU need TO ADD TO SOME DATA in that case you have to use inner join

-- EXTRA ADDED
INSERT INTO Students(StudentID,Name,Email,CGPA,Phone)
VALUES
(4,'Aka','6rika45@gmail.com',3.09,'+880 126546888'),
(5,'radi','sayaty5@gmail.com',2.49,'+880 125564268'),
(6,'Mahamub','dfjgha45gd@gmail.com',3.34,'+880 34769968');

SELECT * FROM students;


-- extra added
INSERT INTO exam(reg_num,StudentID,e_Name)
VALUES
(1917,5,'Midterm');
SELECT * FROM exam;


-- INNER JOIN
SELECT Students.StudentID,reg_num,e_Name,Students.Name,Email,CGPA,Phone
FROM Students INNER JOIN exam
ON Students.StudentID=exam.StudentID;

--------------------------------------------------------------------------------------


-- left join
-- it always priotise left side table 
-- so both matches info and left sides all info will show

SELECT Students.StudentID,reg_num,e_Name,Students.Name,Email,CGPA,Phone
FROM Students LEFT JOIN exam
ON Students.StudentID=exam.StudentID;




-- RUGHT JOIN
-- SAME AS LEFT JUST CHOICE RIGHT

SELECT Students.StudentID,reg_num,e_Name,Students.Name,Email,CGPA,Phone
FROM Students RIGHT JOIN exam
ON Students.StudentID=exam.StudentID;
