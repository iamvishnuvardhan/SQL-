create database mega;
use mega;

CREATE TABLE customer (
  cust_id INT,
  cust_name VARCHAR(100),
  date DATE CHECK (date BETWEEN '2023-01-01' AND '2023-06-30'),
  city VARCHAR(100),
  channel VARCHAR(50),
  in_time TIMESTAMP,
  out_time TIMESTAMP,
  CONSTRAINT check_time_variation CHECK (out_time >= in_time + INTERVAL '1' HOUR AND out_time <= in_time + INTERVAL '2' HOUR),
  PRIMARY KEY (cust_id, date)
);

INSERT INTO customer (cust_id, cust_name, date, city, channel, in_time, out_time)
VALUES
    (3, 'Sophie Müller', '2023-04-22', 'Berlin', 'meta', '2023-04-22 10:00:00', '2023-04-22 12:00:00'),
    (5, 'Anna Andersen', '2023-05-18', 'Copenhagen', 'instagram', '2023-05-18 08:30:00', '2023-05-18 10:30:00'),
    (8, 'Jan Kowalski', '2023-06-10', 'Warsaw', 'meta', '2023-06-10 15:00:00', '2023-06-10 17:00:00'),
    (2, 'Maria Rossi', '2023-02-15', 'Rome', 'twitter', '2023-02-15 14:30:00', '2023-02-15 16:00:00'),
    (6, 'Marco Rossi', '2023-01-30', 'Milan', 'pinterest', '2023-01-30 14:00:00', '2023-01-30 15:30:00'),
    (7, 'Sofia Petrova', '2023-04-12', 'Moscow', 'meta', '2023-04-12 11:30:00', '2023-04-12 13:30:00'),
    (9, 'Elena Gonzalez', '2023-03-18', 'Madrid', 'pinterest', '2023-03-18 09:30:00', '2023-03-18 11:30:00'),
    (10, 'Luca Ferrari', '2023-05-05', 'Rome', 'instagram', '2023-05-05 13:00:00', '2023-05-05 14:30:00'),
    (1, 'John Smith', '2023-03-10', 'Paris', 'instagram', '2023-03-10 09:00:00', '2023-03-10 11:00:00'),
    (4, 'Andrei Popescu', '2023-03-05', 'Bucharest', 'meta', '2023-03-05 16:30:00', '2023-03-05 18:00:00'),
    (8, 'Jan Kowalski', '2023-04-02', 'Warsaw', 'instagram', '2023-04-02 15:30:00', '2023-04-02 17:00:00'),
    (3, 'Sophie Müller', '2023-06-10', 'Berlin', 'twitter', '2023-06-10 16:30:00', '2023-06-10 18:00:00'),
    (6, 'Marco Rossi', '2023-04-20', 'Milan', 'twitter', '2023-04-20 14:30:00', '2023-04-20 16:00:00'),
    (9, 'Elena Gonzalez', '2023-06-08', 'Madrid', 'meta', '2023-06-08 16:00:00', '2023-06-08 18:00:00'),
    (2, 'Maria Rossi', '2023-05-01', 'Rome', 'pinterest', '2023-05-01 09:00:00', '2023-05-01 10:30:00'),
    (5, 'Anna Andersen', '2023-03-22', 'Copenhagen', 'meta', '2023-03-22 13:30:00', '2023-03-22 15:30:00'),
    (7, 'Sofia Petrova', '2023-05-15', 'Moscow', 'pinterest', '2023-05-15 10:00:00', '2023-05-15 12:00:00'),
    (1, 'John Smith', '2023-04-18', 'Paris', 'twitter', '2023-04-18 12:00:00', '2023-04-18 14:00:00'),
    (4, 'Andrei Popescu', '2023-02-25', 'Bucharest', 'pinterest', '2023-02-25 09:30:00', '2023-02-25 11:00:00'),
    (10, 'Luca Ferrari', '2023-03-28', 'Rome', 'meta', '2023-03-28 14:30:00', '2023-03-28 16:00:00'),
    (3, 'Sophie Müller', '2023-01-17', 'Berlin', 'pinterest', '2023-01-17 10:30:00', '2023-01-17 12:00:00'),
    (6, 'Marco Rossi', '2023-06-02', 'Milan', 'instagram', '2023-06-02 11:00:00', '2023-06-02 13:00:00'),
    (9, 'Elena Gonzalez', '2023-05-11', 'Madrid', 'twitter', '2023-05-11 14:00:00', '2023-05-11 15:30:00'),
    (2, 'Maria Rossi', '2023-04-08', 'Rome', 'instagram', '2023-04-08 08:30:00', '2023-04-08 10:30:00'),
    (5, 'Anna Andersen', '2023-03-02', 'Copenhagen', 'twitter', '2023-03-02 15:00:00', '2023-03-02 16:30:00'),
    (7, 'Sofia Petrova', '2023-01-20', 'Moscow', 'pinterest', '2023-01-20 09:00:00', '2023-01-20 10:30:00'),
    (10, 'Luca Ferrari', '2023-06-15', 'Rome', 'meta', '2023-06-15 13:30:00', '2023-06-15 15:30:00'),
    (1, 'John Smith', '2023-05-09', 'Paris', 'pinterest', '2023-05-09 14:30:00', '2023-05-09 16:00:00'),
    (4, 'Andrei Popescu', '2023-04-05', 'Bucharest', 'instagram', '2023-04-05 11:30:00', '2023-04-05 13:00:00'),
    (8, 'Jan Kowalski', '2023-02-12', 'Warsaw', 'pinterest', '2023-02-12 09:30:00', '2023-02-12 11:30:00'),
    (3, 'Sophie Müller', '2023-06-10', 'Berlin', 'meta', '2023-06-10 16:30:00', '2023-06-10 18:00:00'),
    (6, 'Marco Rossi', '2023-04-20', 'Milan', 'twitter', '2023-04-20 14:30:00', '2023-04-20 16:00:00'),
    (9, 'Elena Gonzalez', '2023-06-08', 'Madrid', 'meta', '2023-06-08 16:00:00', '2023-06-08 18:00:00'),
    (2, 'Maria Rossi', '2023-05-01', 'Rome', 'pinterest', '2023-05-01 09:00:00', '2023-05-01 10:30:00'),
    (5, 'Anna Andersen', '2023-03-22', 'Copenhagen', 'meta', '2023-03-22 13:30:00', '2023-03-22 15:30:00'),
    (7, 'Sofia Petrova', '2023-05-15', 'Moscow', 'pinterest', '2023-05-15 10:00:00', '2023-05-15 12:00:00'),
    (1, 'John Smith', '2023-04-18', 'Paris', 'twitter', '2023-04-18 12:00:00', '2023-04-18 14:00:00'),
    (4, 'Andrei Popescu', '2023-02-25', 'Bucharest', 'pinterest', '2023-02-25 09:30:00', '2023-02-25 11:00:00'),
    (10, 'Luca Ferrari', '2023-03-28', 'Rome', 'meta', '2023-03-28 14:30:00', '2023-03-28 16:00:00'),
    (3, 'Sophie Müller', '2023-01-17', 'Berlin', 'pinterest', '2023-01-17 10:30:00', '2023-01-17 12:00:00'),
    (6, 'Marco Rossi', '2023-06-02', 'Milan', 'instagram', '2023-06-02 11:00:00', '2023-06-02 13:00:00'),
    (9, 'Elena Gonzalez', '2023-05-11', 'Madrid', 'twitter', '2023-05-11 14:00:00', '2023-05-11 15:30:00'),
    (2, 'Maria Rossi', '2023-04-08', 'Rome', 'instagram', '2023-04-08 08:30:00', '2023-04-08 10:30:00'),
    (5, 'Anna Andersen', '2023-03-02', 'Copenhagen', 'twitter', '2023-03-02 15:00:00', '2023-03-02 16:30:00'),
    (7, 'Sofia Petrova', '2023-01-20', 'Moscow', 'pinterest', '2023-01-20 09:00:00', '2023-01-20 10:30:00'),
    (10, 'Luca Ferrari', '2023-06-15', 'Rome', 'meta', '2023-06-15 13:30:00', '2023-06-15 15:30:00'),
    (1, 'John Smith', '2023-05-09', 'Paris', 'pinterest', '2023-05-09 14:30:00', '2023-05-09 16:00:00'),
    (4, 'Andrei Popescu', '2023-04-05', 'Bucharest', 'instagram', '2023-04-05 11:30:00', '2023-04-05 13:00:00'),
    (8, 'Jan Kowalski', '2023-02-12', 'Warsaw', 'pinterest', '2023-02-12 09:30:00', '2023-02-12 11:30:00');


select * from customer;
SELECT COUNT(*) FROM customer;
SELECT MAX(city) FROM customer;
SELECT MIN(city) FROM customer;


