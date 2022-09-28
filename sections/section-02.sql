--ALL
--SELECT * FROM customer c;

--FROM
--SELECT a.last_name, a.first_name FROM actor a;
--SELECT c.first_name, c.last_name, c.email FROM customer c;

--GROUP BY
--SELECT c.first_name FROM customer c GROUP BY c.first_name HAVING COUNT(*) > 1;

--DISTINCT
--SELECT DISTINCT(f.release_year) FROM film f;
--SELECT DISTINCT(f.rating)  FROM film f;

--COUNT
--SELECT count(DISTINCT f.rating) FROM film f;
--SELECT count(p.amount)  FROM payment p;
--SELECT COUNT(DISTINCT amount)  FROM payment p;

--WHERE
--SELECT * FROM customer c
--WHERE c.first_name = 'Jared';

--SELECT * FROM film f 
--WHERE f.rental_rate > 4
--AND f.replacement_cost >= 19.99
--AND f.rating = 'R'
--;

--SELECT count(*) FROM film f 
--WHERE f.rental_rate > 4
--AND f.replacement_cost >= 19.99
--AND f.rating = 'R'
--;


--SELECT count(*) FROM film f 
--WHERE f.rating = 'R'
--OR f.rating = 'PG-13'
--;


--SELECT * FROM film f 
--WHERE f.rating != 'R'
--;

--SELECT count(*) FROM film f 
--WHERE f.rating != 'R'
--;

--SELECT * FROM customer c  
--WHERE c.first_name = 'Jared'
--;

--SELECT c.email  FROM customer c  
--WHERE c.first_name = 'Nancy'
--AND c.last_name = 'Thomas'
--;

--SELECT f.description FROM film f
--WHERE f.title = 'Outlaw Hanky'
--;

--SELECT a.phone FROM address a 
--WHERE a.address = '259 Ipoh Drive'
--;

--SELECT count(*) FROM film f 
--WHERE f.length <= 50

--ORDER BY
--SELECT * FROM customer c
--ORDER BY c.first_name ASC
--;

--SELECT * FROM customer c
--ORDER BY c.first_name DESC
--;

--SELECT c.store_id ,c.first_name, c.last_name  FROM customer c
--ORDER BY c.store_id DESC, c.first_name ASC
--;

--SELECT c.store_id ,c.first_name, c.last_name  FROM customer c
--ORDER BY c.store_id, c.first_name
--;

--SELECT c.store_id ,c.first_name, c.last_name  FROM customer c
--ORDER BY c.store_id, c.first_name
--;

--LIMIT
--SELECT * FROM payment p 
--ORDER BY p.payment_date DESC 
--LIMIT 5
--;

--SELECT * FROM payment p 
--ORDER BY p.payment_date ASC 
--LIMIT 5
--;

--SELECT p.customer_id  FROM payment p 
--ORDER BY p.payment_date ASC 
--LIMIT 10
--;

--SELECT f.title FROM film f 
--ORDER BY f.length
--LIMIT 5
--;

--SELECT f.title, f.length FROM film f 
--ORDER BY f.length ASC
--LIMIT 5
--;

--SELECT f.title, f.length FROM film f 
--ORDER BY f.length
--LIMIT 5
--;

--SELECT count(*) FROM film f 
--WHERE f.length <= 50

--BETWEEN
--SELECT count(*)  FROM payment p
--WHERE p.amount BETWEEN 8 AND 9
--;

--SELECT count(*)  FROM payment p
--WHERE p.amount NOT BETWEEN 8 AND 9
--;

--SELECT * FROM payment p
--WHERE p.payment_date BETWEEN '2007-02-01' AND '2007-02-14'
--;

--IN
--SELECT COUNT(*) FROM payment p 
--WHERE p.amount IN (0.99, 1.98, 1.99)

--SELECT COUNT(*) FROM payment p 
--WHERE p.amount NOT IN (0.99, 1.98, 1.99)

--SELECT COUNT(*) FROM payment p 
--WHERE p.amount NOT IN (0.99, 1.98, 1.99)

--SELECT * FROM customer c 
--WHERE c.first_name IN ('John', 'Jake', 'Julie')
--;

--LIKE and ILIKE
--SELECT * FROM customer c 
--WHERE c.first_name LIKE 'J%'
--;

--SELECT count(*)  FROM customer c 
--WHERE c.first_name LIKE 'J%'
--AND c.last_name LIKE 'S%'
--;

--SELECT *  FROM customer c 
--WHERE c.first_name LIKE 'J%'
--AND c.last_name LIKE 'S%'
--;

--SELECT *  FROM customer c 
--WHERE c.first_name ILIKE 'j%'
--AND c.last_name ILIKE 's%'
--;

--SELECT *  FROM customer c 
--WHERE c.first_name LIKE '_her%'
--;

--SELECT *  FROM customer c 
--WHERE c.first_name NOT LIKE '_her%'
--;

--SELECT * FROM customer c 
--WHERE c.first_name LIKE 'A%' AND c.last_name NOT LIKE 'B%'
--ORDER BY c.last_name
--;

--CHALLENGE
--SELECT COUNT(p.amount)  FROM payment p
--WHERE p.amount > 5
--;

--SELECT COUNT(*)  FROM actor a
--WHERE a.first_name LIKE 'P%'
--;

--SELECT COUNT(DISTINCT(a.district))  FROM address a;
--SELECT COUNT(DISTINCT(a.district))  FROM address a;

--SELECT DISTINCT(a.district) FROM address a;

--SELECT COUNT(*) FROM film f
--WHERE f.rating = 'R'
--AND f.replacement_cost BETWEEN 5 AND 15
--;

--SELECT COUNT(*) FROM film f
--WHERE f.title LIKE '%Truman%'
--;





