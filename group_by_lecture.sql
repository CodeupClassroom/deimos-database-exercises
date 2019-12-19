# =========== GROUPING

use employees;
#
# select dob, first_name from students
# group by dob;




# Grouping by a single column

select gender from employees;

# Grouping by multiple columns
# COUNT function
# Find total number of employees
# Find the total number of female and male employees
# Find the most common name
# Find the most common female and male name
# MIN and MAX
# Select the first and last hire date for each first name
# Find the min, max, avg, total, and count of each employee's salaries


# Grouping by a single column

SELECT gender FROM employees
group by gender;

SELECT DISTINCT gender from employees;


SELECT count(*), first_name  FROM employees
GROUP BY first_name;

select distinct first_name, count(*) from employees;



# Grouping by multiple columns

# SELECT first_name, last_name FROM employees
# GROUP BY last_name, first_name;

# SELECT first_name, last_name, count(*) FROM employees
# GROUP BY first_name, last_name
# HAVING COUNT(*) > 3
# ORDER BY count(*) DESC;




























# SELECT DISTINCT first_name, last_name FROM employees;

# COUNT function

# Find total number of employees
# SELECT COUNT(*) FROM employees;

# Find the most common name
SELECT first_name, last_name, count(*) FROM employees
GROUP BY first_name, last_name;

SELECT first_name, last_name, count(*) FROM employees
GROUP BY first_name, last_name
ORDER BY count(*) DESC;

# Find the most common female and male name
SELECT first_name, last_name, gender, count(*) FROM employees
GROUP BY first_name, last_name, gender
ORDER BY count(*) desc;



# =========== AGGREGATE FUNCTIONS

# COUNT


# Aggregating with group by

# Find total number of female and male employees
SELECT gender, COUNT(*) FROM employees
GROUP BY gender;

# MIN and MAX
# Select the first and last hire date for each first name
SELECT first_name, MIN(hire_date) as 'First Hired', MAX(hire_date) as 'Last Hired' FROM employees
GROUP BY first_name;

DESCRIBE salaries;

# Find the minimum, maximum, average, and total number of salaries
SELECT COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries;

# Find the min, max, avg, total, and count of each employee's salaries




















SELECT emp_no, COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries
GROUP BY emp_no;











