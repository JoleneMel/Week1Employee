use employees;

-- 1. Show all employees who were born before 1965-01-01
SELECT * FROM employees WHERE birth_date < '1965-01-01';

-- 2. Show all employees who are female and were hired after 1990
SELECT * FROM employees WHERE gender ='f' AND hire_date > '1900-12-31';

-- 3. Show the first and last name of the first 50 employees whose last name starts with F
SELECT  first_name, last_name FROM employees WHERE last_name LIKE 'f%' LIMIT 50;

-- 4. Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102. You can choose the rest of the data.
INSERT INTO employees VALUES(100, '1995-07-28', 'Drake', 'Droke', 'M', '2019-02-02'),
		(101, '1993-06-02', 'Eliza', 'Skyler', 'F', '2011-08-03'),
(102, '1997-02-07', 'Jojo', 'Marie', 'F', '2015-06-27');
-- Below is to see the created/inserted new employees since they are the first 3 
SELECT * FROM employees LIMIT 3;

-- 5. Change the employee's first name to Bob for the employee with the emp_no of 10023.
UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;
-- Below is how to see Bobs information 
SELECT * FROM employees WHERE emp_no = 10023;

-- 6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.
UPDATE employees SET hire_date = '2002-01-01' WHERE (last_name LIKE 'p%') OR (first_name LIKE 'p%'); 
-- Below to get the exact 31566 rows that were updated if your limit is set to 1000 rows automatically in workbench 
-- then it will only show the 1000 :) 
-- NOTE when tested on Workbench gives Error Code 1175 which is a "safe update mode"  
-- but on the command prompt it will work as proven by screenshots that were under the code to avoid confusion what command does what
-- and I wanted to test on how to better use both AND and OR to get the exact amount of results that were updated 
SELECT  first_name, last_name, hire_date FROM employees WHERE hire_date = '2002-01-01' AND (last_name LIKE 'p%') OR (first_name LIKE 'p%');

-- 7. Delete all employees who have an emp_no less than 10000
DELETE FROM employees WHERE emp_no < 10000;

-- 8. Delete all employees who have an emp_no of 10048, 10099, 10234, and 20089.
DELETE  FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
