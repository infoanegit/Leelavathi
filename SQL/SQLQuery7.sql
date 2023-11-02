USE[exercise]

--Select the average price in the table titles for  pub _id is 1389.
select AVG(CAST(t.price AS DECIMAL)) AS AVG_Price from titles t join publishers p on t.pub_id=p.pub_id where p.pub_id IN(select pub_id from publishers where pub_name='Algodata Infosystems')
select pub_id,AVG(CAST(price  AS decimal)) AS AVG_price from titles where pub_id=1389 group by pub_id

--What are the total numbers of rows in the titles table
select count(*) AS total_rows from titles 

--List the address of all stores  in the state WA or CA in the table stores
select stor_address from stores where state IN('WA','CA')

--List the date between  the year 1989 to 1992 in the table employee
select hire_date from employee where year(hire_date) between 1989 and 1992

--List the first name and last name of the employee in the employee table where the jobs_id  is 6
select e.fname,e.lname from employee e join jobs j on e.job_id=j.job_id where j.job_id IN(select job_id from jobs where job_desc='Managing Editor')
select fname,lname from employee where job_id=6

