-- Create a new database called "School" this database should have two tables: teachers and students.
CREATE DATABASE school;

-- DROP TABLE student;
-- DROP TABLE teacher;
-- The students table should have 
-- columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.
CREATE TABLE student(
   student_id BIGSERIAL PRIMARY KEY,
   first_name VARCHAR(125) NOT NULL,
   last_name VARCHAR(125) NOT NULL,
   homeroom_number INTEGER NOT NULL,
   phone VARCHAR(15) UNIQUE NOT NULL,
   email VARCHAR(50) UNIQUE,
   graduation_year INTEGER
);

-- The teachers table should have 
-- columns for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.
CREATE TABLE teacher(
   teacher_id BIGSERIAL PRIMARY KEY,
   first_name VARCHAR(125) NOT NULL,
   last_name VARCHAR(125) NOT NULL,
   homeroom_number INTEGER NOT NULL,
   phone VARCHAR(15) UNIQUE NOT NULL,
   email VARCHAR(50) UNIQUE,
   department VARCHAR(50) NOT NULL
);

-- The constraints are mostly up to you, but your table constraints do have to consider the following:
--  We must have a phone number to contact students in case of an emergency.
--  We must have ids as the primary key of the tables
-- Phone numbers and emails must be unique to the individual.
-- Once you've made the tables, insert a student named Mark Watney (student_id=1) 
-- who has a phone number of 777-555-1234 and doesn't have an email. 
-- He graduates in 2035 and has 5 as a homeroom number.
INSERT INTO
   student(
      first_name,
      last_name,
      homeroom_number,
      phone,
      graduation_year
   )
VALUES
('Mark', 'Watney', 5, '777-555-1234', 2035);

-- Then insert a teacher names Jonas Salk (teacher_id = 1) 
-- who as a homeroom number of 5 and is from the Biology department. His contact 
-- info is: jsalk@school.org and a phone number of 777-555-4321.
INSERT INTO
   teacher(
      first_name,
      last_name,
      homeroom_number,
      phone,
      email,
      department
   )
VALUES
(
      'Jonas',
      'Salk',
      5,
      '777-555-4321',
      'jsalk@school.org',
      'Biology'
   );