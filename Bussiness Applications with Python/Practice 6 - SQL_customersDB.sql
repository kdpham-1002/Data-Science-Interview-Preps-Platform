/*markdown
## Database with Python
*/

SELECT * FROM Customers WHERE Country='Germany'
LIMIT 5;

SELECT Address FROM Customers WHERE Country='Germany'
LIMIT 5;

SELECT *
FROM Products
WHERE Price>10
LIMIT 5;

SELECT *
FROM Customers
WHERE CustomerName LIKE '%Market%'

SELECT *
FROM Orders
ORDER BY OrderDate ASC
LIMIT 5;

SELECT CustomerName, COUNT(OrderID)
FROM Orders
/* creates a new table of customer names and number of orders */
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
GROUP BY CustomerName

/*markdown
## Exercises
*/

/*markdown
### Problem 1
Select all customers in the city of Madrid
*/

SELECT * FROM customers WHERE City='Madrid'

/*markdown
### Problem 2
Select all customers in the city of Madrid
*/

SELECT CustomerID, Address FROM customers
WHERE City='Madrid'

/*markdown
### Problem 3
Select all products with prices under $20
*/

    SELECT * FROM products WHERE Price < 20
    LIMIT 5;

/*markdown
### Problem 4
Find all of the customers containing the word 'Restaurant'
*/

SELECT * FROM customers
WHERE CustomerName LIKE '%Restaurant%'

/*markdown
### Problem 5
Select all orders and output them in decending order by date. Print the first five records.
*/

SELECT * FROM orders
ORDER BY OrderDate DESC
LIMIT 5;

/*markdown
### Problem 6
Perform an inner join to gather the customer names along with the count of their orders. Print the first 5 records. 
*/

SELECT CustomerName, COUNT(OrderID) AS OrderCount
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
GROUP BY CustomerName
LIMIT 5;