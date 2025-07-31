-- grouped function
-- oparets in sets of rows to give one result per group

-- count

 SELECT COUNT(*) FROM students;
 
 -- sum
 
 SELECT SUM(salary) FROM college_employee;
 
 -- AVG
  SELECT AVG(salary) FROM college_employee;
   SELECT SUM(salary) ,AVG(salary) FROM college_employee;
   
   -- MAX,MIN
-- WORKS ON multiple rows in a column ,	Returns the max value across all rows

SELECT MAX(salary) , MIN(salary) FROM college_employee;

 