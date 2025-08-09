-- SELECT ITEMS
SELECT Name FROM instructors;

SELECT Name,Phone FROM instructors;

SELECT * FROM instructors; -- all

SELECT DISTINCT Gender FROM instructors; -- REMOVE DUPLICATES SHOW THE GENDERS LIKE MALE FEMALE 

SELECT * FROM instructors  LIMIT 3; -- FROM ALL YOU WANT TO KNOW ONLY 3 TEACHERS INFO

SELECT * FROM instructors  LIMIT 1,3; -- YOU DONT WANT TO SEE FIRST ITEM INFO BUT WANT TO NEXT 3 ITEMS INFO

SELECT Name FROM instructors  ORDER BY Name; -- ascending order
SELECT Name FROM Students  ORDER BY Name; -- ascending order
SELECT CGPA FROM Students  ORDER BY CGPA   ; 

SELECT Name,StartTime FROM instructors  ORDER BY Name,StartTime ; -- ascending order
-- in that case they choose name sorting cause name is first thn starttime

SELECT Name FROM Students  ORDER BY Name DESC  ; -- decending order
SELECT CGPA FROM Students  ORDER BY CGPA DESC  ; -- decending order


SELECT Name,CGPA
FROM Students
ORDER BY Name ASC,CGPA DESC; -- Multiple ordering
-- sorting will happen with first order which is name asc



SELECT CGPA FROM Students  ORDER BY CGPA   ; -- ASCENDING

