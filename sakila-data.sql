USE sakila;

#1. Display all available tables in the Sakila database.
SELECT * 
FROM actor,address,category,city,country,customer,film,film_actor,film_category,film_text,inventory,language,payment,rental,staff,store;

#2. Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor,film,customer;

#3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;

#4 Retrieve unique release years:
SELECT DISTINCT release_year
FROM film;

#5 Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT sum(store_id)
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT sum(active)
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
-- how many films are available for rent
SELECT COUNT(film_id)
FROM film;

-- how many have been rented
SELECT COUNT(rental_id)
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(last_name)
FROM actor;

#6 Retrieve the 10 longest films.
SELECT length
FROM film
ORDER BY length DESC;

#7 Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';

#BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * 
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT *
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

