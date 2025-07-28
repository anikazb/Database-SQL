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



