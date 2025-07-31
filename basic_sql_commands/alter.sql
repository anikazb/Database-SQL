--  ALTER 
-- EDITING(table)
 
 -- ADD
ALTER TABLE Students
ADD age INT;
SELECT * FROM Students;

  -- CHANGE
ALTER TABLE Students
CHANGE age student_age INT ;
SELECT * FROM Students;

  -- DROP COLUMN
ALTER TABLE Students
DROP COLUMN student_age;
SELECT * FROM Students;