USE sakila;

SELECT *
FROM sakila.inventory;

SELECT *
FROM sakila.film;

SELECT COUNt(*) AS num_copies
FROM sakila.inventory
WHERE film_id=(
SELECT film_id
FROM sakila.film
WHERE title="Hunchback Impossible");

SELECT * FROM sakila.film
WHERE length>(SELECT AVG(length) AS 'Average_length' FROM sakila.film);

SELECT *
FROM sakila.actor;

SELECT *
FROM sakila.film_actor;

SELECT *
FROM sakila.film;

SELECT * 
FROM sakila.actor
WHERE actor_id IN (
 SELECT actor_id
 FROM sakila.film_actor
 WHERE film_id=(
   SELECT film_id
   FROM sakila.film
   WHERE title="Alone Trip")
   );
   
SELECT *
FROM film_category;

SELECT *
FROM category;

SELECT *
FROM sakila.film
WHERE film_id IN(
  SELECT film_id
  FROM sakila.film_category
  WHERE category_id IN (
    SELECT category_id
    FROM sakila.category
    WHERE name="Family")
);

SELECT *
FROM sakila.customer; 

SELECT *
FROM sakila.address;

SELECT first_name, last_name, email
FROM sakila.customer
WHERE address_id IN (
    SELECT address_id
    FROM sakila.address
    WHERE city_id IN (
        SELECT city_id
        FROM sakila.city
        WHERE country_id = (
            SELECT country_id
            FROM sakila.country
            WHERE country = 'Canada'
        )
    )
);

   
