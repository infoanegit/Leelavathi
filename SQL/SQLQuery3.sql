USE[exercise]

--Display/find the total number of Publishers in publishers table
select count(*) AS total_number_publishers from publishers

--Display the employee name and job description of all employees with the same job as Howard.
SELECT e.fname, e.lname, j.job_desc
FROM employee e
JOIN jobs j ON e.job_id = j.job_id
WHERE j.job_id IN (SELECT job_id FROM employee WHERE fname = 'Howard');

--Display the employee name and job description of all employees whose are not Managing Editor.
SELECT e.fname, e.lname, j.job_desc
FROM employee e
JOIN jobs j ON e.job_id = j.job_id
WHERE j.job_desc!='Managing Editor';



