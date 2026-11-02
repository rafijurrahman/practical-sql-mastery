-- Module 18 practice tables (SQLite)
-- DB Browser: Import > Database from SQL file | DB Fiddle: Database=SQLite, paste in Schema SQL
CREATE TABLE monthly_sales (month_id VARCHAR(10) PRIMARY KEY, revenue INT);
INSERT INTO monthly_sales VALUES ('2026-01',12000),('2026-02',15000),('2026-03',18000),('2026-04',16000);
