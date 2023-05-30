--SHOW all
--SHOW timezone
--SELECT now()
--SELECT current_time 
--SELECT timeofday()
--SELECT current_time
--SELECT current_date 

--SELECT * FROM payment p 

--SELECT EXTRACT(YEAR FROM payment_date) AS Year
--FROM payment p  

--SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
--FROM payment p  

--SELECT p.payment_date 
--FROM payment p  

--SELECT AGE(p.payment_date)
--FROM payment p  

--SELECT to_char(payment_date, 'MONTH-YYYY')
--FROM payment p;

--SELECT to_char(payment_date, 'mon/dd/YYYY')
--FROM payment p;

--SELECT to_char(payment_date, 'MM/dd/YYYY')
--FROM payment p;

--50.
--SELECT to_char(payment_date, 'MONTH')
--FROM payment p
--GROUP BY to_char(payment_date, 'MONTH');

--SELECT
--DISTINCT(to_char(payment_date, 'MONTH'))
--FROM payment p;

--SELECT 
--count(to_char(payment_date, 'day'))
--FROM payment p 
--WHERE to_char(payment_date, 'day') = 'monday   '
--
--SELECT rental_rate/replacement_cost FROM film f;

--SELECT ROUND(rental_rate/replacement_cost,2) FROM film f;

--SELECT c.first_name || ' ' || c.last_name AS full_name
--FROM customer c;

--SELECT upper(c.first_name) || ' ' || upper(c.last_name) AS full_name
--FROM customer c;

--SELECT lower(c.first_name) || lower(c.last_name)|| '@gmail.com' AS org_email
--FROM customer c;

--SELECT lower(left(c.first_name,1)) || lower(c.last_name)|| '@gmail.com' AS org_email
--FROM customer c;

-- SUB QUERY --

--SELECT * FROM film f;

--SELECT AVG(f.rental_rate) FROM film f  

--SELECT f.title, f.rental_rate  
--FROM film f 
--WHERE f.rental_rate >
--	(SELECT AVG(f.rental_rate) FROM film f)
--ORDER BY f.title;

--SELECT * FROM rental r;


--SELECT * FROM inventory i ;

--SELECT i.film_id 
--FROM rental r 
--INNER JOIN inventory i ON r.inventory_id = i.inventory_id;

--SELECT f.film_id, f.title  
--FROM film f
--WHERE f.film_id
--IN
--(
--	SELECT i.film_id 
--	FROM rental r 
--	INNER JOIN inventory i ON i.inventory_id = r.inventory_id
--	WHERE r.return_date BETWEEN '2005-05-29' AND '2005-05-30'
--)
--ORDER BY f.title


--SELECT * FROM payment AS p
--WHERE p.amount > 11

--SELECT c.first_name, c.last_name 
--FROM customer AS c 
--WHERE EXISTS
--(
--	SELECT * FROM payment AS p
--	WHERE p.amount > 11
--	AND c.customer_id = p.customer_id 
--)


--SELECT c.first_name, c.last_name 
--FROM customer AS c 
--WHERE NOT EXISTS
--(
--	SELECT * FROM payment AS p
--	WHERE p.amount > 11
--	AND c.customer_id = p.customer_id 
--)

--SELF JOIN
--SELECT f1.title, f2.title, f1.length
--FROM film AS f1
--INNER JOIN film AS f2
--ON f1.film_id != f2.film_id
--AND f1.length = f2.length
--AND f1.length = 117;


SELECT 
count(to_char(payment_date, 'day'))
FROM payment p 
WHERE to_char(payment_date, 'day') = 'monday   '



