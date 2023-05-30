--AS
--error
--SELECT p.customer_id, SUM(p.amount) AS total_amount 
--FROM payment p
--GROUP BY p.customer_id
--HAVING total_amount > 100;

--correct
--SELECT p.customer_id, SUM(p.amount) AS total_amount 
--FROM payment p
--GROUP BY p.customer_id
--HAVING SUM(p.amount) > 100; -- HAVING | FILTER, can't use ALIAS

--INNER JOIN 
--SELECT * FROM payment p 
--INNER JOIN customer c 
--ON c.customer_id  = p.customer_id 
--WHERE c.customer_id  = 341
--ORDER BY p.rental_id DESC;

--SELECT p.payment_id,p.amount ,p.customer_id, c.first_name, c.last_name
--FROM payment p 
--INNER JOIN customer c 
--ON p.customer_id  = c.customer_id 

-- LEFT OUTER JOIN | LEFT JOIN
--SELECT f.film_id, f.title, i.inventory_id, i.store_id, i.film_id
--FROM film f 
--LEFT JOIN inventory i 
--ON f.film_id  = i.film_id
--WHERE i.film_id ISNULL
--;

-- RIGHT OUTER JOIN | RIGHT JOIN
--SELECT f.film_id, f.title, i.inventory_id, i.store_id, i.film_id
--FROM inventory i  
--RIGHT JOIN film f 
--ON f.film_id  = i.film_id
--WHERE i.film_id ISNULL
--;

--SELECT a.district, c.email FROM customer c
--INNER JOIN address a
--ON c.address_id  = a.address_id 
--WHERE a.district = 'California'
--;

SELECT a.district, c.email FROM customer c
LEFT JOIN address a
ON c.address_id  = a.address_id 
WHERE a.district = 'California'
;


