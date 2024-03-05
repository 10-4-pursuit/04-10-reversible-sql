-- Exercise: Understanding Actions and Their Counterparts in SQL

-- Before starting, ensure PostgreSQL is installed and accessible through the psql command line interface.

-- TASK 1: Create a database named 'library'.
-- HINT: Use the CREATE DATABASE command followed by the database name.
-- Note: Reversing this action (dropping the database) is considered administrative and should be done with caution outside of this exercise.
-- Connect to the 'library' database using the psql command line interface.
-- HINT: Use the \c command followed by the database name to connect to your database.
danieltorres=# CREATE DATABASE library;
CREATE DATABASE
danieltorres=# \c library
You are now connected to database "library" as user "danieltorres".
library=# 

DROP DATABASE library;
-- TASK 2: Create a table named 'books' with specified columns for book details.
-- HINT: Use the CREATE TABLE command. Define columns for book id (as SERIAL PRIMARY KEY), title, author, and published_year.
-- To reverse this action, think about how you might remove a table from the database.
library=# create table books(id SERIAL PRIMARY KEY, title VARCHAR(50), author VARCHAR(50), published_year INTEGER);
CREATE TABLE

library=# select * from books;
 id | title | author | published_year 

DROP TABLE books;
-- TASK 3: Add a column 'genre' of type VARCHAR to the 'books' table.
-- HINT: Use the ALTER TABLE command followed by ADD COLUMN, specifying the column name and type.
-- Think about how you would remove a column if needed.
library=# ALTER TABLE books add column genre VARCHAR(50) ;
ALTER TABLE

library=# select * from books;

library=# select * from books;
 id | title | author | published_year | genre 
----+-------+--------+----------------+-------

DROP COLUMN genre;
-- TASK 4: Insert a row into the 'books' table with details for a book.
-- HINT: Use the INSERT INTO command with the table name and a list of values for each column.
-- To reverse this action, consider how you would identify and remove a specific row from a table.
library=# INSERT INTO books (title, author, published_year, genre) VALUES('7 Habits Of Highly Effective People','Step
then R. Covey', 1989, 'Self-help book');
INSERT 0 1

library=# select * from books;
 id |                title                |      author       | published_year |     genre      
----+-------------------------------------+-------------------+----------------+----------------
  1 | 7 Habits Of Highly Effective People | Stepthen R. Covey |           1989 | Self-help book

DELETE FROM books WHERE id = 1;
-- TASK 5: Update the 'published_year' of all books in the table.
-- HINT: Use the UPDATE command specifying the table and SET clause to change the value of a column.
-- Consider how you would reverse this action if you know the original values.
library=# UPDATE books
library-# SET published_year = 2000;
UPDATE 1
library=# select * from books;
 id |                title                |      author       | published_year |     genre      
----+-------------------------------------+-------------------+----------------+----------------
  1 | 7 Habits Of Highly Effective People | Stepthen R. Covey |           2000 | Self-help book
(1 row)

library=# UPDATE books
library-# SET author = 'Stephen R. Covey';

library=# UPDATE books
library-# SET published_year = 1989
library-# where title = '7 Habits Of Highly Effective People' AND author = 'Stephen R. Covey';
UPDATE 1
library=# select * from books;
 id |                title                |      author      | published_year |     genre      
----+-------------------------------------+------------------+----------------+----------------
  1 | 7 Habits Of Highly Effective People | Stephen R. Covey |           1989 | Self-help book
-- TASK 6: Delete a row from the 'books' table based on a condition.
-- HINT: Use the DELETE FROM command with a WHERE clause to specify which row(s) to remove.
-- Think about how you could reverse this action. What information would you need to insert the same data again?
library=# DELETE from books where title = '7 Habits Of Highly Effective People';
DELETE 1
library=# select * from books;
 id | title | author | published_year | genre 
----+-------+--------+----------------+-------

library=# INSERT INTO books (title, author, published_year, genre) VALUES('7 Habits Of Highly Effective People','Stephen R. Covey', 1989, 'Self-help book');
INSERT 0 1
library=# select * from books;
 id |                title                |      author      | published_year |     genre      
----+-------------------------------------+------------------+----------------+----------------
  2 | 7 Habits Of Highly Effective People | Stephen R. Covey |           1989 | Self-help book
-- Observations:
-- Through this exercise, reflect on what SQL operations are straightforward to reverse and which ones might be permanent or require specific conditions to reverse. Consider the implications of actions such as dropping databases or tables, updating data without backups, and the importance of precise conditions in reversible operations.
