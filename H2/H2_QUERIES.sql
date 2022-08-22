SELECT p_name, p_price FROM products ORDER BY p_name ASC;
SELECT * FROM products WHERE p_price > 50;
SELECT p_name, p_price, p_price*0.2 AS twenty_percent FROM products;
SELECT * FROM workers ORDER BY w_lname DESC;
SELECT TOP 3 * FROM orders WHERE quantity > 10;
UPDATE orders SET quantity = 10 WHERE w_id = 3;