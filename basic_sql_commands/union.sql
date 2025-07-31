-- union

CREATE TABLE IF NOT EXISTS sylhet_tour
( roll INT PRIMARY KEY,
name VARCHAR(190),
age INT 
);

CREATE TABLE IF NOT EXISTS cox_tour
( roll INT PRIMARY KEY,
name VARCHAR(190),
age INT 
);

INSERT INTO sylhet_tour (roll,name,age)
VALUES
( 23,'Tanisha',23),
( 13,'Rumaha',21),
( 3,'Taya',24),
( 43,'Orira',21);

INSERT INTO cox_tour (roll,name,age)
VALUES
( 23,'Tanisha',23),
( 8,'Azaan',24),
( 34,'Tofual',24),
( 2,'Meherin',21);

-- for union , union all
-- these table has same num of col and row
-- maintain insert sequence

SELECT * FROM sylhet_tour UNION SELECT * FROM cox_tour; -- REMOVE DUPLICATE
SELECT * FROM sylhet_tour UNION ALL SELECT * FROM cox_tour; -- WITH DUPLICATE

