--CREATE DATABASE self_join;

--DROP TABLE employee;
--
--CREATE TABLE employee (
--    id BIGSERIAL PRIMARY KEY,
--    last_name varchar(255),
--    first_name varchar(255),
--    boss_id int 
--);
--
--
--INSERT INTO employee VALUES(0, 'Uzumaki', 'Naruto', null);
--INSERT INTO employee (last_name, first_name, boss_id) VALUES('Sacul', 'Lucas', 0);
--INSERT INTO employee (last_name, first_name, boss_id) VALUES('Meybiugo', 'Bovoylua', 1);
--INSERT INTO employee (last_name, first_name, boss_id) VALUES('Fauil', 'Esmupen', 1);
--INSERT INTO employee (last_name, first_name, boss_id) VALUES('Xaor', 'Moargak', 1);
--
--
--SELECT * FROM employee e;

SELECT e.first_name || ' ' || e.last_name AS employee_name, 
b.first_name || ' ' || b.last_name AS boss_name 
FROM employee AS e
LEFT JOIN employee AS b
ON e.boss_id = b.id;


