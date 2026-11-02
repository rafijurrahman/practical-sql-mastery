-- Module 3 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50), status VARCHAR(20));
INSERT INTO customers VALUES (1,'Md. Rafijur Rahman','Patuakhali','Active'),(2,'Saiful Islam Nuhash','Pirojpur','Active'),(3,'Shadia Naznin Mim','Barishal','Active'),(4,'Prithyraj Biswas','Patuakhali','Active'),(5,'Sadia Islam','Barishal','Active'),(6,'Mst. Jannatul Chaiti','Barishal','Inactive');
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date TEXT, total_amount INT, shipped_date TEXT);
INSERT INTO orders VALUES (101,1,'2026-01-05',3200,'2026-01-07'),(102,2,'2026-01-12',7500,'2026-01-15'),(103,3,'2026-02-03',1800,NULL),(104,1,'2026-02-14',9200,'2026-02-16'),(105,5,'2026-03-01',4500,NULL),(106,1,'2026-03-10',12000,'2026-03-13');
