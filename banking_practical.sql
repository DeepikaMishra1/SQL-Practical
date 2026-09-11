
CREATE DATABASE banking_db;
USE banking_db;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);
DESC accounts;
SHOW TABLES;
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20');
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');

SELECT * FROM accounts;
SELECT customer_name, account_number
FROM accounts;
SELECT customer_name, account_type, balance, status
FROM accounts;
SELECT *
FROM accounts
WHERE account_type = 'Savings';
SELECT *
FROM accounts
WHERE city = 'Pune';
SELECT *
FROM accounts
WHERE balance > 50000;

SELECT *
FROM accounts
WHERE balance <= 50000;
SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 200000;

SELECT *
FROM accounts
WHERE credit_score >= 750;

SELECT *
FROM accounts
WHERE status = 'Active';
SELECT *
FROM accounts
WHERE status = 'Dormant'
   OR status = 'Closed';
   SELECT *
FROM accounts
WHERE city = 'Pune'
  AND status = 'Active';
SELECT *
FROM accounts
WHERE city = 'Mumbai'
   OR city = 'Nashik';
   SELECT *
FROM accounts
WHERE account_type = 'Savings'
   OR account_type = 'Salary';

SELECT *
FROM accounts
WHERE balance NOT BETWEEN 25000 AND 100000;

SELECT *
FROM accounts
WHERE customer_name LIKE 'A%';
SELECT *
FROM accounts
WHERE customer_name LIKE '%a';
SELECT *
FROM accounts
WHERE branch LIKE '%Road%';
SELECT *
FROM accounts
ORDER BY balance DESC
LIMIT 3;
SELECT *
FROM accounts
LIMIT 5;
SELECT *
FROM accounts
LIMIT 3 OFFSET 3;
SELECT *
FROM accounts
WHERE city = 'Pune'
  AND status = 'Active'
  AND account_type = 'Savings'
  AND balance > 50000;
  SELECT *
FROM accounts
WHERE city IN ('Pune', 'Mumbai', 'Nashik')
  AND credit_score >= 750;
SELECT *
FROM accounts
WHERE balance > 100000
  AND credit_score >= 800;
  SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 150000
   OR credit_score > 800;

SELECT *
FROM accounts
WHERE status = 'Active'
  AND account_type <> 'Current';

SELECT *
FROM accounts
WHERE customer_name LIKE '%ar%';
UPDATE accounts
SET balance = 95000
WHERE customer_name = 'Aarav Sharma';
SELECT *
FROM accounts
WHERE customer_name = 'Aarav Sharma';

UPDATE accounts
SET status = 'Active'
WHERE customer_name = 'Vikram Deshmukh';

SELECT *
FROM accounts
WHERE customer_name = 'Vikram Deshmukh';
UPDATE accounts
SET credit_score = 755
WHERE customer_name = 'Rohan Joshi';
SELECT *
FROM accounts
WHERE customer_name = 'Rohan Joshi';

UPDATE accounts
SET branch = 'College Road'
WHERE customer_name = 'Sneha Kulkarni';
SELECT *
FROM accounts
WHERE customer_name = 'Sneha Kulkarni';
UPDATE accounts
SET account_type = 'Premium Current'
WHERE customer_name = 'Priya Patil';
SELECT *
FROM accounts
WHERE customer_name = 'Priya Patil';
UPDATE accounts
SET balance = balance + 25000
WHERE account_id = 1006;

SELECT *
FROM accounts
WHERE account_id = 1006;

UPDATE accounts
SET balance = balance + 5000
WHERE account_type = 'Savings';
SELECT *
FROM accounts
WHERE account_type = 'Savings';
UPDATE accounts
SET city = 'Pune City'
WHERE city = 'Pune';
-- ============================================================
-- KIRAN ACADEMY
-- SQL INDUSTRIAL PRACTICAL TASK
-- BANKING ACCOUNT MANAGEMENT
-- DDL + DML + DQL
-- TASK 1 TO TASK 60
-- ============================================================


-- ============================================================
-- PART A - DATABASE & TABLE CREATION
-- ============================================================

-- TASK 1: Create database named banking_db

CREATE DATABASE banking_db;


-- TASK 2: Use/select banking_db database

USE banking_db;


-- TASK 3: Create accounts table

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);


-- TASK 4: Display structure of accounts table

DESC accounts;


-- TASK 5: Display all tables inside banking_db

SHOW TABLES;


-- ============================================================
-- PART B - INSERT OPERATIONS
-- ============================================================

-- TASK 6: Insert Aarav Sharma

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');


-- TASK 7: Insert Priya Patil

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20');


-- TASK 8: Insert Rohan Joshi

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');


-- TASK 9: Insert Sneha Kulkarni

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');


-- TASK 10: Insert Vikram Deshmukh

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');


-- TASK 11: Insert Neha More

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');


-- ============================================================
-- PART C - DQL / SELECT QUERIES
-- ============================================================

-- TASK 12: Display all records

SELECT * FROM accounts;


-- TASK 13: Display only customer_name and account_number

SELECT customer_name, account_number
FROM accounts;


-- TASK 14: Display customer_name, account_type, balance and status

SELECT customer_name, account_type, balance, status
FROM accounts;


-- TASK 15: Display all Savings account holders

SELECT *
FROM accounts
WHERE account_type = 'Savings';


-- TASK 16: Display all customers from Pune

SELECT *
FROM accounts
WHERE city = 'Pune';


-- TASK 17: Display accounts having balance greater than 50000

SELECT *
FROM accounts
WHERE balance > 50000;


-- TASK 18: Display accounts having balance less than or equal to 50000

SELECT *
FROM accounts
WHERE balance <= 50000;


-- TASK 19: Display accounts having balance between 50000 and 200000

SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 200000;


-- TASK 20: Display accounts having credit_score >= 750

SELECT *
FROM accounts
WHERE credit_score >= 750;


-- TASK 21: Display only Active accounts

SELECT *
FROM accounts
WHERE status = 'Active';


-- TASK 22: Display accounts whose status is Dormant or Closed

SELECT *
FROM accounts
WHERE status = 'Dormant'
   OR status = 'Closed';


-- TASK 23: Display accounts from Pune AND status = Active

SELECT *
FROM accounts
WHERE city = 'Pune'
  AND status = 'Active';


-- TASK 24: Display accounts from Mumbai OR Nashik

SELECT *
FROM accounts
WHERE city = 'Mumbai'
   OR city = 'Nashik';


-- TASK 25: Display accounts whose account_type is Savings OR Salary

SELECT *
FROM accounts
WHERE account_type = 'Savings'
   OR account_type = 'Salary';


-- TASK 26: Display accounts whose balance is NOT BETWEEN 25000 AND 100000

SELECT *
FROM accounts
WHERE balance NOT BETWEEN 25000 AND 100000;


-- TASK 27: Display accounts whose customer_name starts with A

SELECT *
FROM accounts
WHERE customer_name LIKE 'A%';


-- TASK 28: Display accounts whose customer_name ends with a

SELECT *
FROM accounts
WHERE customer_name LIKE '%a';


-- TASK 29: Display accounts whose branch contains the word Road

SELECT *
FROM accounts
WHERE branch LIKE '%Road%';


-- TASK 30: Display top 3 accounts having highest balance

SELECT *
FROM accounts
ORDER BY balance DESC
LIMIT 3;


-- TASK 31: Display first 5 accounts

SELECT *
FROM accounts
LIMIT 5;


-- TASK 32: Display 3 accounts starting from 4th record

SELECT *
FROM accounts
LIMIT 3 OFFSET 3;


-- TASK 33: Display Active Savings accounts from Pune
-- with balance greater than 50000

SELECT *
FROM accounts
WHERE city = 'Pune'
  AND status = 'Active'
  AND account_type = 'Savings'
  AND balance > 50000;


-- ============================================================
-- PART C - DQL CONTINUED
-- ============================================================

-- TASK 34: Display accounts from Pune, Mumbai or Nashik
-- having credit_score >= 750

SELECT *
FROM accounts
WHERE city IN ('Pune', 'Mumbai', 'Nashik')
  AND credit_score >= 750;


-- TASK 35: Display accounts where balance > 100000
-- AND credit_score >= 800

SELECT *
FROM accounts
WHERE balance > 100000
  AND credit_score >= 800;


-- TASK 36: Display accounts where balance is between
-- 50000 and 150000 OR credit_score > 800

SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 150000
   OR credit_score > 800;


-- TASK 37: Display accounts whose status is Active
-- AND account_type is NOT Current

SELECT *
FROM accounts
WHERE status = 'Active'
  AND account_type <> 'Current';


-- TASK 38: Display accounts whose customer_name contains 'ar'

SELECT *
FROM accounts
WHERE customer_name LIKE '%ar%';


-- ============================================================
-- PART D - UPDATE OPERATIONS
-- ============================================================

-- TASK 39: Update Aarav Sharma balance from 85000 to 95000

UPDATE accounts
SET balance = 95000
WHERE customer_name = 'Aarav Sharma';


-- Check result

SELECT *
FROM accounts
WHERE customer_name = 'Aarav Sharma';


-- TASK 40: Update Vikram Deshmukh status from Dormant to Active

UPDATE accounts
SET status = 'Active'
WHERE customer_name = 'Vikram Deshmukh';


-- Check result

SELECT *
FROM accounts
WHERE customer_name = 'Vikram Deshmukh';


-- TASK 41: Update Rohan Joshi credit_score from 735 to 755

UPDATE accounts
SET credit_score = 755
WHERE customer_name = 'Rohan Joshi';


-- Check result

SELECT *
FROM accounts
WHERE customer_name = 'Rohan Joshi';


-- TASK 42: Update Sneha Kulkarni branch
-- from Nashik Road to College Road

UPDATE accounts
SET branch = 'College Road'
WHERE customer_name = 'Sneha Kulkarni';


-- Check result

SELECT *
FROM accounts
WHERE customer_name = 'Sneha Kulkarni';


-- TASK 43: Update Priya Patil account_type
-- from Current to Premium Current

UPDATE accounts
SET account_type = 'Premium Current'
WHERE customer_name = 'Priya Patil';


-- Check result

SELECT *
FROM accounts
WHERE customer_name = 'Priya Patil';


-- TASK 44: Increase balance of account_id 1006 by 25000

UPDATE accounts
SET balance = balance + 25000
WHERE account_id = 1006;


-- Check result

SELECT *
FROM accounts
WHERE account_id = 1006;


-- TASK 45: Increase balance of all Savings accounts by 5000

UPDATE accounts
SET balance = balance + 5000
WHERE account_type = 'Savings';


-- Check result

SELECT *
FROM accounts
WHERE account_type = 'Savings';


-- TASK 46: Update all accounts from Pune
-- to city = Pune City

UPDATE accounts
SET city = 'Pune City'
WHERE city = 'Pune';

SELECT *
FROM accounts
WHERE city = 'Pune City';
UPDATE accounts
SET status = 'Dormant'
WHERE balance < 20000;
SELECT *
FROM accounts
WHERE balance < 20000;
DELETE FROM accounts
WHERE account_id = 1005;
SELECT * FROM accounts;
DELETE FROM accounts
WHERE account_number = 'ACC10004';
SELECT * FROM accounts;
DELETE FROM accounts
WHERE status = 'Closed';
SELECT * FROM accounts;
DELETE FROM accounts
WHERE balance < 10000
   OR credit_score < 600;
SELECT * FROM accounts;
DELETE FROM accounts
WHERE city = 'Mumbai'
  AND status = 'Dormant';
  SELECT * FROM accounts;
ALTER TABLE accounts
ADD COLUMN email VARCHAR(100);
DESC accounts;
ALTER TABLE accounts
ADD COLUMN mobile VARCHAR(15);
DESC accounts;
ALTER TABLE accounts
MODIFY COLUMN branch VARCHAR(100);
DESC accounts;
ALTER TABLE accounts
RENAME COLUMN customer_name TO name;
DESC accounts;
ALTER TABLE accounts
DROP COLUMN mobile;
DESC accounts;
ALTER TABLE accounts
ADD COLUMN account_category VARCHAR(30);
UPDATE accounts
SET account_category = 'Premium'
WHERE account_id = 1001;
UPDATE accounts
SET account_category = 'Regular'
WHERE account_id = 1002;
SELECT *
FROM accounts;
RENAME TABLE accounts TO bank_accounts;
SHOW TABLES;
DESC bank_accounts;
TRUNCATE TABLE bank_accounts;
SELECT *
FROM bank_accounts;
DROP TABLE bank_accounts;
SHOW TABLES;



