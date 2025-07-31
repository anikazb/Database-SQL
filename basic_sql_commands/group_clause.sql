 -- group clause

-- wrong
SELECT salary FROM college_employee      -- we have to use aggregate function
GROUP BY `rank` ;  
 
 
 
 -- correct
SELECT `rank`, SUM(salary) FROM college_employee     -- we have to use aggregate function like sum.avg,count
GROUP BY `rank` ;

-- you want it in decending order
SELECT `rank`, SUM(salary) AS SUM_SALARY FROM college_employee 
GROUP BY `rank` 
ORDER BY SUM_SALARY DESC;
