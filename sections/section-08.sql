-- DROP DATABASE section_8;
-- CREATE DATABASE section_8;
-- account table
CREATE TABLE account (
   account_id BIGSERIAL PRIMARY KEY,
   username VARCHAR(50) UNIQUE NOT NULL,
   password VARCHAR(50) NOT NULL,
   email VARCHAR(250) UNIQUE NOT NULL,
   created_on TIMESTAMP NOT NULL,
   last_login TIMESTAMP
);

-- job table
CREATE TABLE job (
   job_id BIGSERIAL PRIMARY KEY,
   job_name VARCHAR(120) UNIQUE NOT NULL
);

-- account_job foreign_key
CREATE TABLE account_job (
   account_id INTEGER REFERENCES account(account_id),
   job_id INTEGER REFERENCES job(job_id),
   hire_date TIMESTAMP
);

-- INSERT INTO
SELECT
   *
FROM
   account;

INSERT INTO
   account (username, password, email, created_on)
VALUES
(
      'Jose',
      'Jose123!',
      'jose@email.com',
      CURRENT_TIMESTAMP
   );

SELECT
   *
FROM
   account;

INSERT INTO
   job (job_name)
VALUES
('Astronaut');

INSERT INTO
   job (job_name)
VALUES
('President');

SELECT
   *
FROM
   job;

INSERT INTO
   account_job (account_id, job_id, hire_date)
VALUES
   (1, 1, CURRENT_TIMESTAMP);

SELECT
   *
FROM
   account_job;

SELECT
   j.job_name,
   aj.*
FROM
   account_job aj
   INNER JOIN job j ON aj.job_id = j.job_id;

-- UPDATE
SELECT
   *
FROM
   account;

UPDATE
   account
SET
   last_login = CURRENT_TIMESTAMP;

SELECT
   *
FROM
   account;

UPDATE
   account
SET
   last_login = created_on;

SELECT
   *
FROM
   account;

UPDATE
   account_job
SET
   hire_date = account.created_on
FROM
   account
WHERE
   account_job.account_id = account.account_id;

SELECT
   *
FROM
   account_job;

UPDATE
   account
SET
   last_login = CURRENT_TIMESTAMP RETURNING email,
   created_on,
   last_login;

SELECT
   *
FROM
   account;

INSERT INTO
   job (job_name)
VALUES
   ('Cowboy');

-- DELETE FROM
SELECT
   *
FROM
   job;

DELETE FROM
   job
WHERE
   job_name = 'Cowboy' RETURNING job_id,
   job_name;

SELECT
   *
FROM
   job;

-- ALTER TABLE
CREATE TABLE information(
   information_id BIGSERIAL PRIMARY KEY,
   title VARCHAR(125) NOT NULL,
   person VARCHAR(50) NOT NULL UNIQUE
);

SELECT
   *
FROM
   information;

ALTER TABLE
   information RENAME TO new_information;

SELECT
   *
FROM
   new_information;

ALTER TABLE
   new_information RENAME COLUMN person TO people;

INSERT INTO
   new_information (title)
VALUES
   ('some new title');

ALTER TABLE
   new_information
ALTER COLUMN
   people DROP NOT NULL;

INSERT INTO
   new_information (title)
VALUES
   ('some new title');

SELECT
   *
FROM
   new_information;

-- DROP TABLE
ALTER TABLE
   new_information DROP COLUMN people;

SELECT
   *
FROM
   new_information;

ALTER TABLE
   new_information DROP COLUMN IF EXISTS people;

-- CHECK
CREATE TABLE employee(
   employee_id BIGSERIAL PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   birthdate DATE CHECK (birthdate > '1900-01-01'),
   hire_date DATE CHECK (hire_date > birthdate),
   salary INTEGER CHECK (salary > 0)
);

-- not_okay
INSERT INTO
   employee(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Jose', 'Portilla', '1899-11-03', '2010-01-01', 100);

-- okay
INSERT INTO
   employee(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Jose', 'Portilla', '1900-11-03', '2010-01-01', 100);

-- not_okay
INSERT INTO
   employee(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Sammy', 'Smith', '1900-11-03', '2010-01-01', -100);

-- okay
INSERT INTO
   employee(first_name, last_name, birthdate, hire_date, salary)
VALUES
('Sammy', 'Smith', '1990-11-03', '2011-01-01', 100);

SELECT
   *
FROM
   employee;