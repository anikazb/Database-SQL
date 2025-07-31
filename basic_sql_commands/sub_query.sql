-- Sub query 
-- it means a query is inside another query 

SELECT AVG(salary) FROM college_employee;

-- Q: YOU WANT TO HOW MANY EMPLOYEES SALARY IS HIGHER THAN THE AVG OF ALL EMPLOYEES SALARY

SELECT * FROM college_employee WHERE salary > ( SELECT AVG(salary) FROM college_employee ) ; -- use double bracket