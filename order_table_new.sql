use mega;
CREATE TABLE orders (
  order_id int,
  order_date date,
  product varchar(100),
  product_id varchar(100),
  arrival_date date,
  dispatch_date date,
  send_loc varchar(100),
  reciv_loc varchar(100),
  PRIMARY KEY (order_id)
);
INSERT INTO orders (order_id, order_date, product, product_id, arrival_date, dispatch_date, send_loc, reciv_loc)
VALUES 
  (9, '2023-06-09', 'Shoe', 'I009', '2023-06-13', '2023-06-10', 'Warehouse I', 'Store 9'),
  (2, '2023-06-02', 'Shirt', 'B002', '2023-06-06', '2023-06-03', 'Warehouse B', 'Store 2'),
  (6, '2023-06-06', 'Shirt', 'F006', '2023-06-10', '2023-06-07', 'Warehouse F', 'Store 6'),
  (4, '2023-06-04', 'Watch', 'D004', '2023-06-08', '2023-06-05', 'Warehouse D', 'Store 4'),
  (5, '2023-06-05', 'Shoe', 'E005', '2023-06-09', '2023-06-06', 'Warehouse E', 'Store 5'),
  (1, '2023-06-01', 'Shoe', 'A001', '2023-06-05', '2023-06-02', 'Warehouse A', 'Store 1'),
  (3, '2023-06-03', 'Pant', 'C003', '2023-06-07', '2023-06-04', 'Warehouse C', 'Store 3'),
  (7, '2023-06-07', 'Pant', 'G007', '2023-06-11', '2023-06-08', 'Warehouse G', 'Store 7'),
  (10, '2023-06-10', 'Shirt', 'J010', '2023-06-14', '2023-06-11', 'Warehouse J', 'Store 10'),
  (8, '2023-06-08', 'Watch', 'H008', '2023-06-12', '2023-06-09', 'Warehouse H', 'Store 8');

select * from orders;
SELECT COUNT(*) FROM orders;
SELECT MAX(product) FROM orders;
SELECT MIN(product) FROM orders;






