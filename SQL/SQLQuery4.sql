USE[exercise]

--Display the maximum and minimum price of the book.
select max(price) AS max_price,min(price) AS min_price from titles

--Display the total book price for each type
SELECT type, SUM(CAST(price AS DECIMAL)) AS total_price
FROM titles
GROUP BY type


--Find out the Publisher for the following books ‘Cooking with Computers: Surreptitious Balance Sheets’, ‘Silicon Valley Gastronomic Treats’, ‘Is Anger the Enemy?’, ‘Fifty Years in Buckingham Palace Kitchens’
select p.pub_name from publishers p join titles t on p.pub_id=t.pub_id where t.title IN ('Cooking with Computers: Surreptitious Balance Sheets',
  'Silicon Valley Gastronomic Treats',
  'Is Anger the Enemy?',
  'Fifty Years in Buckingham Palace Kitchens')