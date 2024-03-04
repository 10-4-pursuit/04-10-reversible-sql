-- Exercise: Understanding Actions and Their Counterparts in SQL

-- Before starting, ensure PostgreSQL is installed and accessible through the psql command line interface.

-- TASK 1: Create a database named 'library'.
-- HINT: Use the CREATE DATABASE command followed by the database name.
-- Note: Reversing this action (dropping the database) is considered administrative and should be done with caution outside of this exercise.

-- Connect to the 'library' database using the psql command line interface.
-- HINT: Use the \c command followed by the database name to connect to your database.

-- TASK 2: Create a table named 'books' with specified columns for book details.
-- HINT: Use the CREATE TABLE command. Define columns for book id (as SERIAL PRIMARY KEY), title, author, and published_year.
-- To reverse this action, think about how you might remove a table from the database.

-- TASK 3: Add a column 'genre' of type VARCHAR to the 'books' table.
-- HINT: Use the ALTER TABLE command followed by ADD COLUMN, specifying the column name and type.
-- Think about how you would remove a column if needed.

-- TASK 4: Insert a row into the 'books' table with details for a book.
-- HINT: Use the INSERT INTO command with the table name and a list of values for each column.
-- To reverse this action, consider how you would identify and remove a specific row from a table.

-- TASK 5: Update the 'published_year' of all books in the table.
-- HINT: Use the UPDATE command specifying the table and SET clause to change the value of a column.
-- Consider how you would reverse this action if you know the original values.

-- TASK 6: Delete a row from the 'books' table based on a condition.
-- HINT: Use the DELETE FROM command with a WHERE clause to specify which row(s) to remove.
-- Think about how you could reverse this action. What information would you need to insert the same data again?

-- Observations:
-- Through this exercise, reflect on what SQL operations are straightforward to reverse and which ones might be permanent or require specific conditions to reverse. Consider the implications of actions such as dropping databases or tables, updating data without backups, and the importance of precise conditions in reversible operations.
