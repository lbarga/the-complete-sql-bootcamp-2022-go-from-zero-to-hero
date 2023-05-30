--AGGREGATION FUNCTIONS
--AVG()
--COUNT()
--MAX()
--MIN()
--SUM()

--GROUP BY
--SELECT MAX(f.replacement_cost) FROM film f;
--SELECT MIN(f.replacement_cost) FROM film f;
--SELECT MAX(f.replacement_cost), MIN(f.replacement_cost)  FROM film f;
--SELECT COUNT(f.title) FROM film f;
--SELECT COUNT(*) FROM film f;
--SELECT AVG(f.replacement_cost) FROM film f;
--SELECT ROUND(AVG(f.replacement_cost), 2) FROM film f;
--SELECT SUM(f.replacement_cost) FROM film f;

--SELECT p.customer_id, ROUND(SUM(p.amount), 2) FROM payment p
--GROUP BY p.customer_id
--ORDER BY SUM(p.amount) DESC 
--;

--SELECT p.customer_id, ROUND(COUNT(p.amount), 2) FROM payment p
--GROUP BY p.customer_id
--ORDER BY COUNT(p.amount) DESC 
--;

--SELECT DATE(p.payment_date) FROM payment p;

--SELECT p.staff_id, COUNT(p.amount) FROM payment p
--GROUP BY p.staff_id
--;

--SELECT f.rating, ROUND(AVG(f.replacement_cost), 2) FROM film f
--GROUP BY f.rating1
--;

--SELECT p.customer_id, SUM(p.amount) AS total_amount FROM payment p
--GROUP BY p.customer_id
--ORDER BY total_amount DESC
--LIMIT 5
--;

--HAVING
--SELECT p.customer_id, SUM(p.amount) AS total_amount FROM payment p
--GROUP BY p.customer_id
--HAVING SUM(p.amount) > 100
--ORDER BY total_amount
--;

--SELECT c.store_id, COUNT(c.customer_id) AS total FROM customer c
--GROUP BY c.store_id
--HAVING COUNT(c.customer_id) > 300
--;

-- SELECT p.customer_id, count(p.payment_id) AS payments  FROM payment p 
-- GROUP BY p.customer_id
-- ORDER BY payments DESC
-- ;



