/*Create a database named library and a table named books with the following columns:
id (INT, Primary Key, Auto Increment)
title (VARCHAR(255))
author (VARCHAR(100))
year (YEAR)
genre (VARCHAR(100))*/
CREATE DATABASE library;
USE library;

CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255),
author VARCHAR(100),
year INT,
genre VARCHAR(100));

/*Insert the following book records into the books table:
"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
"Pride and Prejudice", "Jane Austen", 1813, "Romance"
"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
"1984", "George Orwell", 1949, "Dystopian"
"Moby Dick", "Herman Melville", 1851, "Adventure"*/
INSERT INTO books (title, author, year, genre) VALUES
("The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("Pride and Prejudice", "Jane Austen", 1813, "Romance"),
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
("1984", "George Orwell", 1949, "Dystopian"),
("Moby Dick", "Herman Melville", 1851, "Adventure");

/*Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.*/
SELECT * FROM books WHERE title LIKE "t%";

/*Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.*/
SELECT * FROM books WHERE author LIKE "%son";

/*Write a query to find all books where the title contains the word 'and' using the LIKE operator.*/
SELECT * FROM books WHERE title LIKE "%and%";

/*Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.*/
SELECT * FROM books WHERE title LIKE "%bird";

/*Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.*/
SELECT * FROM books WHERE title REGEXP '^.{3}$';

/*Write a query to select all books where the title contains a number using the REGEXP operator.*/
SELECT * FROM books WHERE title REGEXP '[0-9]';

/*Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.*/
SELECT author FROM books WHERE author REGEXP'^[aj]';

/*Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.*/
SELECT * FROM books WHERE genre REGEXP'^(fiction|adventure)$';

/*Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.*/
SELECT * FROM books WHERE title REGEXP'[A-Z]';

/*Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.*/
SELECT * FROM books WHERE year BETWEEN 1800 AND 1950;

/*Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.*/
SELECT * FROM books WHERE author REGEXP '^[A-Za-z]+[A-Za-z]+$';

/*Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.*/
SELECT * FROM books WHERE title REGEXP '^P[A-Za-z]*[A-Za-z]+$';

/*Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.*/
SELECT * FROM books WHERE title REGEXP '[!@#$%^&*()=+{}\:;"\'<>,.?/~`|-]';
                                              
                                              








