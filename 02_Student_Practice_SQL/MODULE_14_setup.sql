-- Module 14 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_name VARCHAR(100), order_date TEXT, amount INT);
INSERT INTO orders VALUES (501,'Md. Rafijur Rahman','2026-01-15',3500),(502,'Saiful Islam Nuhash','2026-02-10',2400),(503,'Shadia Naznin Mim','2026-02-28',2250),(504,'Md. Bellal Hossen','2026-03-15',1800);
