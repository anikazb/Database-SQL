-- function

-- UPPER ,LOWER
SELECT UPPER('gigling is very unethical act');

SELECT LOWER('DONT TOUCH MY SOUL ');

SELECT UPPER(city) FROM college_employee; -- IN THAT CASE COLUMN NAME WILL BE AUTO CHANGED NOT PERMANENTLY JUST THEY SHOW YOU NOW ( WHAT AS DOES )
-- SO USE AS
SELECT UPPER(city) AS Birth_Place FROM college_employee;

-- CONCAT 
-- ADD ONE LINE TO ANOTHER LINE

SELECT CONCAT('I LOVE',' YOU');

SELECT CONCAT(Name, ' counseling hour is = ', StartTime,' to ', EndTime) FROM instructors;

-- GREATEST , LEAST
-- WORKS ON values in a single row	, Returns the largest of the values in a row

SELECT GREATEST(1,22,-7,90,7798,-18761978);
SELECT LEAST(1,22,-7,90,7798,-18761978);

-- MAX,MIN
-- WORKS ON multiple rows in a column ,	Returns the max value across all rows

SELECT MAX(salary) , MIN(salary) FROM college_employee;

-- POW 
-- 2 TO THE POWER 4 LIKE THAT

SELECT POW(2,4);
SELECT POW(2,4) , POW(2,3);

-- TRUNCATE 
-- SPECIFIES AFTER POINT HOW MANY NUMBERS YOU WANT LIKE 34.67 OR 2.4567

SELECT TRUNCATE(23.6874368968872389646,3);

-- RAND 
-- means random numbers selection

SELECT RAND();
SELECT TRUNCATE(RAND(),2);


-- LOG

SELECT LOG(4);
SELECT TRUNCATE(LOG(4),2);




