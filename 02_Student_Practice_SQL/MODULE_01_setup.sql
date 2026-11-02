-- Module 1 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50), status VARCHAR(20));
INSERT INTO customers VALUES (1,'Md. Rafijur Rahman','Patuakhali','Active'),(2,'Saiful Islam Nuhash','Pirojpur','Active'),(3,'Shadia Naznin Mim','Barishal','Active');
CREATE TABLE products (product_id INT PRIMARY KEY, product_name VARCHAR(100), unit_price INT, stock_qty INT);
INSERT INTO products VALUES (101,'Wireless Mouse',850,45),(102,'Mechanical Keyboard',2400,20);
