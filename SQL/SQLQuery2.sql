USE[exercise]

--Display the names and hire dates of  employees hired between 1991 - 1992.
SELECT fname, minit, lname
FROM employee
WHERE hire_date BETWEEN '1991-01-01' AND '1992-12-31'

--Display the names of employees without middle (minit) name
select concat(fname,lname) AS without_middile_name from employee where minit=''
select concat(fname,lname) AS without_middile_name from employee

--Display the names and hire dates of all employees with the column headers \Name" and \Start Date", in the order they were hired.
select concat(fname,' ',lname) AS Name,hire_date AS Start_Date from employee order by hire_date asc

--Retrieve the names of  employees whose designation is �Sales Representative�.
select fname,lname from employee where job_id=(select job_id from jobs where job_desc='Sales Representative')
