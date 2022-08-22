SELECT p_name, price FROM products ORDER BY p_name ASC;
SELECT * FROM products WHERE price > 50;
SELECT p_name, price, price*0.2 AS twenty_percent FROM products;
SELECT * FROM worders WHERE ORDER BY w_name DES;
SELECT TOP 3 * FROM orders WHERE quantity > 10;
UPDATE orders SET quantity = 10 WHERE w_id = 3;