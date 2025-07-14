-- logical and or
-- AND OPARETOR WORKS WHEN BOTH CONDITION IS TRUE
-- intersection

SELECT Name FROM college_employee WHERE `rank`='Assistant Professor'  AND salary<=60000 ;

SELECT * FROM college_employee WHERE `rank`='Assistant Professor'  AND salary<=60000 ;

SELECT * FROM college_employee WHERE employeeID BETWEEN 101 AND 106  AND salary>60000 ;



-- OR OPARETOR WORKS WHEN ONE OF THE CONDITION IS TRUE NOT BOTH 
-- union

SELECT * FROM college_employee WHERE employeeID BETWEEN 101 AND 106  AND salary>60000 OR city='Dhaka';
SELECT * FROM college_employee WHERE  salary>70000 OR city='Dhaka'; 



-- logical in ,not in
-- in means you want to know the info about some students who lives in dhaka or sylhet or khulna and so on

SELECT * FROM college_employee WHERE city='Dhaka' OR city='Chittagong' OR city='Barishal';
-- instead of,( for time consuming )
SELECT * FROM college_employee WHERE city IN ('Dhaka','Chittagong','Barishal' );


-- FOR NOT IN 
-- AVOIDING 
SELECT * FROM college_employee WHERE city NOT IN ('Dhaka','Chittagong','Barishal' );


-- logical oparetor like
-- you want to search something 

SELECT * FROM students WHERE name LIKE '%a' ; -- %a= before a any letter can exists 
SELECT * FROM students WHERE name LIKE 'a%' ; -- a%= after a any letter can exists 
SELECT * FROM students WHERE name LIKE 'a' ; -- this will run but no result shows you have declare specifically
SELECT * FROM college_employee WHERE name LIKE '_a%'; -- 1 underscore means you want to search the second letter
SELECT * FROM college_employee WHERE name LIKE '_a_i%'; 


-- AS KEYWORD FOR CUSTOM NAME

SELECT Name AS 'Student Name' , Phone AS 'Cell Phone', CGPA AS Grade  FROM Students; -- if you write one word thn no upper commas but more then one word use ''
SELECT `rank` AS Position FROM college_employee;


