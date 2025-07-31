-- view
-- protection
-- hide

CREATE VIEW student_info_hide AS
SELECT StudentID,Name,Email,CGPA   -- hiding their phone num
FROM Students;

SELECT * FROM  student_info_hide;

-- in view table you can do everything that in a table you can do 
-- update ,delete ,alter