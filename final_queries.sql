-- queries

-- 4 easy
SELECT Distinct Name FROM customer WHERE Name LIKE 'J%'

SELECT * FROM customer WHERE City='Boston' OR City='Westford'

SELECT Invoice_ID, IV_Customer_ID, Shiptype FROM invoice WHERE Shiptype Like 'In%' ORDER by Invoice_ID DESC

SELECT * FROM Customer WHERE State NOT IN ('MA');

-- 3 medium
SELECT DISTINCT ItemType, COUNT(*) FROM Item GROUP BY ItemType

SELECT COUNT(Customer_ID), Country FROM Customer WHERE Customer_ID > 01012 GROUP BY Country;

SELECT Name from customer where city = 'Boston' and Customer_ID in(select IV_Customer_ID from invoice where TotalCost > 35)

-- 3 hard 
SELECT customer.Name, customer.City, invoice.TotalCost from customer JOIN invoice on invoice.IV_Customer_ID = customer.Customer_ID

SELECT customer.Name, customer.City, invoice.TotalCost from customer JOIN invoice on invoice.IV_Customer_ID = customer.Customer_ID

CREATE VIEW `Small Items` AS SELECT Item_ID,I_Warehouse_ID FROM Item WHERE Size = 'SM'
SELECT * FROM `Small Items`