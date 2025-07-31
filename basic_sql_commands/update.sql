UPDATE instructors 
SET Name ='Easmeena Bint Sayeed', Phone = 01949927655
WHERE instructorID=1;

-- NEW TABLE INFO IS
SELECT * FROM instructors ;

UPDATE college_employee
SET salary = 60000
WHERE employeeID=101; -- USE PRIMARY KEY ATRRIBUTES WHEN YOU WANT TO UPDATE SOMEONES INFO

-- NEW UPADATE THE EMPLOYEE ANIKA HAD 45K BEFORE THN AFTER IT UPDATED INTO 60K
SELECT * FROM college_employee;


-- arithmetic + update
UPDATE college_employee
SET salary = salary + 1000
WHERE salary<50000;

SELECT * FROM college_employee;


-- UPDATE
-- ADD DATA FOR NEW FORMING COLUMN IN TABLE(table data)

-- To set one value for all rows 
UPDATE students
SET CGPA= 3.50; 
SELECT * FROM Students;

-- To set different values per row
UPDATE students  
SET CGPA= 3.89
WHERE StudentID=1;
SELECT * FROM  Students;

-- use case for better option and flexibility
UPDATE students
SET CGPA = CASE StudentID
      WHEN 1 THEN 3.90
      WHEN 2 THEN 3.00
      WHEN 3 THEN 3.67
      ELSE CGPA
END;
SELECT * FROM Students;



-- update using case

CREATE TABLE IF NOT EXISTS exam(
reg_num INT PRIMARY KEY,
StudentID INT ,
e_Name VARCHAR(100)
);
INSERT INTO exam(reg_num,StudentID,e_Name)
VALUES
(1907,56,'Midterm'),
(7682,53,'Final'),
(3444,12,'Semi-Final');

UPDATE exam
SET StudentID = CASE reg_num
      WHEN 1907 THEN 2
      WHEN 7682 THEN 1
      WHEN 3444 THEN 3
      ELSE StudentID
END;


