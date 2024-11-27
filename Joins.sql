/*Write a query to calculate the total sales (Quantity * UnitPrice) for each product.*/
SELECT ProductID, SUM(quantity*UnitPrice) AS TotalSales FROM Sales GROUP BY ProductID;

/*Write a query to find the total number of products sold in each region.*/ 
SELECT Region, SUM(quantity) FROM Sales GROUP BY Region;

/*Write a query to get the average sales amount per product.*/ 
SELECT ProductID, AVG(quantity*UnitPrice) as Average FROM Sales GROUP BY ProductID;

/*Find the regions where total sales are more than 3000.*/ 
SELECT Region, SUM(quantity*UnitPrice) as "More than 3000" FROM sales GROUP BY Region HAVING SUM(quantity*UnitPrice)>3000;

/*Write a query to get the maximum quantity sold for each product.*/
SELECT ProductID, MAX(quantity) as MaximumQuantity FROM Sales GROUP BY ProductID;

/*Write a query to calculate the average quantity of products sold per region.*/
SELECT Region, AVG(quantity) as AverageQuantity FROM Sales GROUP BY Region;

/*Find the product IDs that have generated a total sales amount of more than 1000.*/
SELECT ProductID, SUM(quantity*UnitPrice) as TotalSales from Sales GROUP BY ProductID having TotalSales>1000;

/*Write a query to get the total number of sales (rows) made for each customer.*/
SELECT CustomerID, COUNT(quantity) as SalesRows from Sales GROUP BY CustomerID;

/*Find the products for which the average quantity sold is less than 5.*/
SELECT ProductID, AVG(quantity) as AverageQuantity FROM Sales GROUP BY ProductID having AVG(quantity)<5;

/*Write a query to find the sum of total sales for each customer in each region.*/
SELECT CustomerID, Region, quantity*UnitPrice as TotalSale FROM Sales;

/*Write a query to calculate the total sales for each month.*/ 
SELECT MONTH(SaleDate) AS SaleMonth, SUM(Quantity*UnitPrice) AS TotalSale FROM Sales GROUP BY SaleMonth;

/*Find the regions where the average unit price is more than 200.*/
SELECT Region, AVG(UnitPrice) AS AvgUnitPrice FROM Sales GROUP BY Region having AvgUnitPrice>200;

/*Write a query to get the minimum and maximum quantity sold per region.*/
SELECT Region, MAX(Quantity) AS MaxQuantity, MIN(Quantity) as MinQuantity FROM Sales GROUP BY Region;

/*Find the customers who have made more than 2 purchases.*/
SELECT CustomerId, COUNT(SaleID) AS Purchases FROM Sales GROUP BY CustomerID having Purchases>2;

/*Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.*/
SELECT ProductID Sum(Quantity*UnitPrice) AS TotalSale FROM Sales GROUP BY ProductID HAVING TotalSale>1500;


