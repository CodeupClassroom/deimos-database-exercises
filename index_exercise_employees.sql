-- USE your employees database.
use employees;

show tables;


-- DESCRIBE each table and inspect the keys and see which columns have indexes and keys.

describe departments;
show index from departments;
show create table departments;

describe dept_emp;
show index from dept_emp;
show create table dept_emp;

describe dept_manager;
show index from dept_manager;
show create table dept_manager;

describe employees;
show index from employees;
show create table employees;

describe salaries;
show index from salaries;
show create table salaries;

describe titles;
show index from titles;
show create table titles;
