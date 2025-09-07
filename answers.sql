-- Question 1: Get firstName, lastName, email, and officeCode of all employees
-- Use INNER JOIN to combine employees with offices on officeCode
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;


-- Question 2: Get productName, productVendor, and productLine from products
-- Use LEFT JOIN to combine products with productlines on productLine
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;


-- Question 3: Retrieve orderDate, shippedDate, status, and customerNumber for first 10 orders
-- Use RIGHT JOIN to combine customers with orders on customerNumber
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;

Question 1: INNER JOIN ensures only employees with matching offices are retrieved.

Question 2: LEFT JOIN returns all products, even if no matching productline exists.

Question 3: RIGHT JOIN returns all orders, including those that may not have a matching customer (unlikely, but per instruction). Limited to first 10 by orderDate.
