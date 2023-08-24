create database vv
use vv
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  order_date DATE,
  quantity INT,
  price DECIMAL(10,2));
	
INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity, price)
VALUES 
(1021, 101, 7711, '2023-07-01', 2, 50),
(1022, 101, 7712, '2023-07-02', 1, 100),
(1023, 102, 7711, '2023-07-01', 1, 50),
(1024, 103, 7713, '2023-07-01', 5, 20),
(1025, 104, 7712, '2023-07-02', 2, 100),
(1026, 101, 7711, '2023-07-03', 3, 50);
	
select * from orders 
			
1.Calculate the total quantity of products sold for each product_id		

SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM orders
GROUP BY product_id;

2.Calculate the total revenue for each customer						

SELECT customer_id, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer_id;

3.Get the maximum quantity ordered in a single order for each product						

SELECT product_id, MAX(quantity) AS max_quantity_ordered
FROM orders
GROUP BY product_id;

4.Get the number of orders placed by each customer						

SELECT customer_id, COUNT(*) AS num_orders
FROM orders
GROUP BY customer_id;

5.Calculate the total revenue for each day						

SELECT order_date, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY order_date;

6.Calculate the total revenue for each product each day						

SELECT order_date, product_id, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY order_date, product_id;

=============================================================================================================================

1.Find the cumulative sum of quantity for each product, ordered by date.		

SELECT
  order_date,
  product_id,
  quantity,
  SUM(quantity) OVER (PARTITION BY product_id ORDER BY order_date) AS cumulative_quantity
FROM
  orders
ORDER BY
  product_id, order_date;
  
 2.Calculate the average price for each customer_id, considering only the top 3 most expensive orders.		
 
 SELECT DISTINCT
  customer_id,
  AVG(price) OVER (PARTITION BY customer_id ORDER BY price DESC ROWS BETWEEN UNBOUNDED PRECEDING AND 2 FOLLOWING) AS avg_price_top3
FROM
  orders;

3.Find the difference in quantity for each product between consecutive orders.						

SELECT
  order_id,
  product_id,
  quantity,
  LAG(quantity) OVER (PARTITION BY product_id ORDER BY order_date) AS previous_quantity,
  quantity - LAG(quantity) OVER (PARTITION BY product_id ORDER BY order_date) AS quantity_difference
FROM
  orders
ORDER BY
  product_id, order_date;
  
  4.Determine the rank of each order for each customer based on the quantity, in descending order.						
  
  SELECT
  order_id,
  customer_id,
  quantity,
  RANK() OVER (PARTITION BY customer_id ORDER BY quantity DESC) AS order_rank
FROM
  orders
ORDER BY
  customer_id, order_rank;
  
  5.Find the running total (cumulative sum) of the price for each customer, sorted by order_date.						
  
  SELECT
  order_id,
  customer_id,
  order_date,
  price,
  SUM(price) OVER (PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM
  orders
ORDER BY
  customer_id, order_date;
  
  ===========================================================================================================================



					
					
					
		
		
		