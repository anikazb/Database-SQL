-- date and time

-- TODAY'S DATE AND TIME 
SELECT CURDATE();
SELECT CURTIME();
-- TOGETHER 
SELECT NOW();

-- ADDING DAY,MOTH ,YEAR
SELECT ADDDATE('2025-07-25',INTERVAL 5 DAY);
SELECT ADDDATE('2018-03-05',INTERVAL 7 YEAR);

-- PAST DATES 
SELECT SUBDATE('2025-07-25',INTERVAL 22 YEAR);

-- MAKE A DATE
SELECT MAKEDATE(2003,90);  -- YEAR,N'TH DAY


-----------------------------------------------------------------------------------------------------


-- makeday & maketime

CREATE TABLE IF NOT EXISTS FAMILY
(
ID INT,
NAME VARCHAR(50),
DOB VARCHAR(20),
RELATION VARCHAR(100)
);
 

INSERT INTO FAMILY(ID, NAME, DOB, RELATION) VALUES
(1, 'Rahim Uddin', '1990-05-12', 'Father'),
(2, 'Shirin Akter', '1995-03-22', 'Mother'),
(3, 'Afsana Rahman', '2010-08-15', 'Sister'),
(4, 'Faisal Uddin', '2012-11-30', 'Brother');

SELECT DAYNAME(DOB), MONTHNAME(DOB)
FROM FAMILY;