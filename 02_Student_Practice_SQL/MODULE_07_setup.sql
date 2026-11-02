-- Module 7 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE customers (customer_id INT PRIMARY KEY, full_name VARCHAR(100), city VARCHAR(50), status VARCHAR(20));
INSERT INTO customers VALUES (1,'Md. Rafijur Rahman','Patuakhali','Active'),(2,'Saiful Islam Nuhash','Barguna','Active'),(3,'Shadia Naznin Mim','Barishal','Active'),(4,'Md. Bellal Hossen','Bhola','Active'),(5,'Sadia Islam','Barishal','Active'),(6,'Mst. Jannatul Chaiti','Barishal','Inactive');
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date TEXT, total_amount INT, shipped_date TEXT);
INSERT INTO orders VALUES (501,2,'2026-01-05',1200,'2026-01-07'),(502,4,'2026-01-12',2400,'2026-01-15'),(503,1,'2026-01-18',2250,'2026-01-20'),(504,5,'2026-02-01',1800,'2026-02-04'),(505,3,'2026-02-10',1100,'2026-02-13'),(506,1,'2026-02-15',3500,'2026-02-18');
