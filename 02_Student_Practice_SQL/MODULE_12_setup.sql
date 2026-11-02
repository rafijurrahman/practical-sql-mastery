-- Module 12 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE online_customers (customer_id INT, full_name VARCHAR(100), city VARCHAR(50));
INSERT INTO online_customers VALUES (1,'Md. Rafijur Rahman','Patuakhali'),(2,'Saiful Islam Nuhash','Pirojpur'),(3,'Shadia Naznin Mim','Barishal');
CREATE TABLE store_customers (customer_id INT, full_name VARCHAR(100), city VARCHAR(50));
INSERT INTO store_customers VALUES (3,'Shadia Naznin Mim','Barishal'),(4,'Prithyraj Biswas','Patuakhali'),(5,'Md. Bellal Hossen','Bhola');
