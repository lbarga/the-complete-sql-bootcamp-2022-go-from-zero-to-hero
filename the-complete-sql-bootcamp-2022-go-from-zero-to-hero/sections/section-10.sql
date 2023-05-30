-- CASE
SELECT
   *
FROM
   customer;

SELECT
   customer_id,
   CASE
      WHEN (customer_id <= 100) THEN 'Premium'
      WHEN (
         customer_id BETWEEN 100
         AND 200
      ) THEN 'Plus'
      ELSE 'Normal'
   END as customer_class
FROM
   customer;

SELECT
   customer_id,
   CASE
      customer_id
      WHEN 2 THEN 'Winner'
      WHEN 5 THEN 'Second Place'
      ELSE 'Normal'
   END as raffle_results
FROM
   customer;

SELECT
   *
FROM
   film;

SELECT
   f.rental_rate,
   CASE
      f.rental_rate
      WHEN 0.99 THEN 1
      ELSE 0
   END
FROM
   film f;

SELECT
   SUM(
      CASE
         f.rental_rate
         WHEN 0.99 THEN 1
         ELSE 0
      END
   ) as bargains,
   SUM(
      CASE
         f.rental_rate
         WHEN 2.99 THEN 1
         ELSE 0
      END
   ) as regular,
   SUM(
      CASE
         f.rental_rate
         WHEN 4.99 THEN 1
         ELSE 0
      END
   ) as premium
FROM
   film f;

select
   *
from
   film;

SELECT
   f.rating
FROM
   film f
GROUP BY
   f.rating;

SELECT
   SUM(
      CASE
         f.rating
         WHEN 'R' THEN 1
         ELSE 0
      END
   ) as r,
   SUM(
      CASE
         f.rating
         WHEN 'PG' THEN 1
         ELSE 0
      END
   ) as pg,
   SUM(
      CASE
         f.rating
         WHEN 'PG-13' THEN 1
         ELSE 0
      END
   ) as pg13
FROM
   film f;

-- COALESCE
SELECT
   COALESCE(
      NULL,
      NULL,
      NULL,
      'W3Schools.com',
      NULL,
      'Example.com'
   );

SELECT
   COALESCE(NULL, 'Example.com', NULL, 'W3Schools.com', NULL);

DROP TABLE coalesce_db;

CREATE TABLE coalesce_db(item VARCHAR(100), final INTEGER);

INSERT INTO
   coalesce_db
VALUES
('A', 80);

INSERT INTO
   coalesce_db
VALUES
('B', null);

INSERT INTO
   coalesce_db
VALUES
('C', 190);

SELECT
   *
FROM
   coalesce_db c;

-- transform nulls in parameter value in this case 0.
SELECT
   c.item,
   COALESCE(c.final, 0)
FROM
   coalesce_db c;

-- CAST
SELECT
   CAST('5' AS int);

SELECT
   CAST(55 AS varchar);

-- work
SELECT
   CAST('5' AS INTEGER);

-- dont work
SELECT
   CAST('five' AS INTEGER);

-- work
SELECT
   CAST(55 AS VARCHAR);

-- only in postgres
SELECT
   '5' :: INTEGER;

SELECT
   *
FROM
   rental;

-- dont work because is integer
SELECT
   CHAR_LENGTH(r.inventory_id)
FROM
   rental r;

-- parse to varchar
SELECT
   CAST(r.inventory_id AS VARCHAR)
FROM
   rental r;

-- work because is varchar
SELECT
   CHAR_LENGTH(CAST(r.inventory_id AS VARCHAR))
FROM
   rental r;

-- NULLIF
CREATE DATABASE null_if;

CREATE TABLE depts(
   first_name VARCHAR(50),
   department VARCHAR(50)
);

INSERT INTO
   depts
VALUES
   ('Vinton', 'A'),
   ('Lauren', 'A'),
   ('Claire', 'B');

SELECT
   *
FROM
   depts;

SELECT
   (
      SUM(
         CASE
            WHEN department = 'A' THEN 1
            ELSE 0
         END
      ) + SUM(
         CASE
            WHEN department = 'B' THEN 1
            ELSE 0
         END
      )
   ) as total_departments
FROM
   depts;

DELETE FROM
   depts d
WHERE
   d.department = 'B';

SELECT
   *
FROM
   depts;

SELECT
   (
      SUM(
         CASE
            WHEN department = 'A' THEN 1
            ELSE 0
         END
      ) / SUM(
         CASE
            WHEN department = 'B' THEN 1
            ELSE 0
         END
      )
   ) as total_departments
FROM
   depts;

SELECT
   (
      SUM(
         CASE
            WHEN department = 'A' THEN 1
            ELSE 0
         END
      ) / NULLIF(
         SUM(
            CASE
               WHEN department = 'B' THEN 1
               ELSE 0
            END
         ),
         0
      )
   ) as total_departments
FROM
   depts;

-- Views
CREATE VIEW customer_info AS
SELECT
   c.first_name,
   c.last_name,
   a.address
FROM
   customer c
   INNER JOIN address a ON c.address_id = a.address_id;

SELECT
   *
FROM
   customer_info;

CREATE
OR REPLACE VIEW customer_info AS
SELECT
   c.first_name,
   c.last_name,
   a.address,
   a.district
FROM
   customer c
   INNER JOIN address a ON c.address_id = a.address_id;

SELECT
   *
FROM
   customer_info;

DROP VIEW IF EXISTS customer_info;

SELECT
   *
FROM
   customer_info;

ALTER VIEW customer_info RENAME TO c_info;

SELECT
   *
FROM
   c_info;

-- Import and Export
CREATE DATABASE import_export;

CREATE TABLE simple(a INTEGER, b INTEGER, C INTEGER);

SELECT
   *
FROM
   simple;