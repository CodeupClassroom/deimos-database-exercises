-- Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql.
-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
use employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;









-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT *, datediff(now(), hire_date) FROM employees WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;





