USE[exercise]

--Find the total number of books in �Business� type.
select count(title) AS total_books  from titles where type='business' 

--Display the published date for this book �Life Without Fear�
select pubdate from titles where title='Life Without Fear'

--Display all the books title published by �Binnet & Hardley�
select t.title from titles t join publishers p on t.pub_id=p.pub_id where p.pub_id=(select pub_id from publishers where pub_name='Binnet & Hardley')

--Find the authors first name and last name for this book �Straight Talk About Computers�
 select  au_fname as [First name]  , au_lname as [ Last Name] from titleauthor t 
 join authors a 
 on  t.au_id = a.au_id
 join  titles ts 
 on t.title_id = ts.title_id 
 where ts.title = 'Straight Talk About Computers' 