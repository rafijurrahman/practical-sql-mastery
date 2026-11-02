-- Module 13 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE raw_customers (customer_id INT PRIMARY KEY, raw_name VARCHAR(100), city VARCHAR(50), phone TEXT, balance INT);
INSERT INTO raw_customers VALUES (1,'  Md. Rafijur Rahman  ','Patuakhali','01711000001',-450),(2,'saiful islam nuhash','Pirojpur','01811000002',1250),(3,'SHADIA NAZNIN MIM','Barishal',NULL,-80);
CREATE TABLE products (product_id INT PRIMARY KEY, title VARCHAR(100), price INT);
INSERT INTO products VALUES (101,'Wireless Mouse',850),(102,'Mechanical Keyboard',2400),(103,'USB-C Cable',350),(104,'Cotton T-Shirt',650);
