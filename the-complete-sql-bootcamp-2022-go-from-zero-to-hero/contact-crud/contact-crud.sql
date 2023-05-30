CREATE DATABASE contact_db;

DROP TABLE contact;

CREATE TABLE phone_type(
  phone_type_id BIGSERIAL PRIMARY KEY,
  name VARCHAR(55)
);

CREATE TABLE contact(
  contact_id BIGSERIAL PRIMARY KEY,
  first_name VARCHAR(55),
  last_name VARCHAR(55),
  phone_type_id  INTEGER REFERENCES phone_type(phone_type_id),
  phone VARCHAR(11),
  email VARCHAR(150)
);

-- CREATE
INSERT INTO phone_type(phone_type_id, name) VALUES(1, 'mobile');
INSERT INTO phone_type(phone_type_id, name) VALUES(2, 'work');
INSERT INTO phone_type(phone_type_id, name) VALUES(3, 'home');

INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('First', 'Contact', 1,'11111111111','first@email.com');
INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('Second', 'Contact', 2,'22222222222','first@email.com');
INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('Third', 'Contact', 3,'33333333333','first@email.com');
INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('First', 'Silva', 1,'11111111111','first@email.com');
INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('Second', 'Silva', 2,'22222222222','first@email.com');
INSERT INTO contact(first_name, last_name, phone_type_id,phone, email) VALUES('Third', 'Silva', 3,'33333333333','first@email.com');

-- READ:ALL
SELECT * FROM contact;

-- READ:ONE
SELECT c.contact_id,c.first_name, c.last_name 
FROM contact c
WHERE CONCAT(c.first_name, ' ',c.last_name) LIKE CONCAT('%Sil%');

-- UPDATE
UPDATE contact c
SET first_name='Test'
WHERE c.contact_id = 9;
SELECT * FROM contact;


-- DELETE
DELETE FROM contact c
WHERE c.contact_id = 4;
SELECT * FROM contact;









