-- list all customers:
SELECT * FROM Customers;

-- Get a list of all products:
SELECT * FROM Products;

Show all orders:
SELECT * FROM Orders;

-- Get reviews:
SELECT * FROM Reviews;

-- Find products in a specific category:

SELECT * FROM Products WHERE category = 'Vegetables';

-- Get products and their sellers for a specific user:
SELECT Products.product_name , Customers.customer_name AS vendor_username
FROM Products 
JOIN Customers ON Product.vendor_id = Customers.customer_id
WHERE Customers.username = 'Heemah';

-- Calculate the average rating for a specific product:
SELECT AVG(rating) AS average_rating
FROM Reviews
WHERE product_id = 1;

-- Get products with their associated vendors:
SELECT Products.product_name, Customers.FirstName, Customers.LastName
FROM Products 
JOIN Customers  ON Products.vendor_id = Customers.customer_id;
