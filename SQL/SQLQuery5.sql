USE[exercise]

--Display/find the given authors complete address information. [Panteley Sylvia]
select concat(phone,' ',address,'',city,' ',state,' ',zip) AS Complete_address from authors where au_lname='Panteley' and au_fname='Sylvia'

--Display only the hire date and employee name for each employee.
select hire_date,concat(fname,' ',lname) AS Employee_name from employee

--Display all the books which come under ‘Psychology’ type.
select title from titles where type='psychology'