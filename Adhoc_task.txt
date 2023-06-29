create database insp_1;
use insp_1
SELECT * FROM sales_purchase_data LIMIT 10
===============================================================================
DROP TABLE IF EXISTS sales_purchase_data_updated;

CREATE TABLE sales_purchase_data_updated AS
SELECT 
    Row_ID,
    Customer_ID,
    Customer_Name,
    Order_ID,
    STR_TO_DATE(Order_Date, '%d-%m-%Y') AS Order_Date,
    STR_TO_DATE(Ship_Date, '%d-%m-%Y') AS Ship_Date,
    Ship_Mode,
    Segment,
    Country,
    City,
    State,
    Region
FROM sales_purchase_data;


select * from sales_purchase_data_updated;

==================================================================================================================================================
>>>> seperate column_for day_month_year

select day(Order_Date), month(Order_Date), year(Order_Date)
from sales_purchase_data_updated;

select
day(Order_Date) as Order_Day,
month(Order_Date) as Order_Month,
year(Order_Date) as Order_Year
from sales_purchase_data_updated;
=========================================================================================================================================================   
>>>> Get the order id alone from the order_Id column and name_it_as Order_id

SELECT REPLACE(Order_ID, 'CA-', '') AS Order_id
FROM sales_purchase_data_updated;

=======================================================================================================================================================
>>>> Customer id must be in the mentioned format

SELECT SUBSTRING_INDEX(Customer_ID, '-', -1) AS Customer_id
FROM sales_purchase_data_updated;
=========================================================================================================================================================
>>>> Concatenate Region,Country, city, state as location_info for each records,
>>>> ex: South_United states_Los Anagels_Texas

SELECT CONCAT(Region, '_', Country, '_', City, '_', State) AS location_info
FROM sales_purchase_data_updated;
============================================================================================================================================================
>>>>From the derived table sales_purchase_data_updated table create a new table called Sales_order_info it should  have

CREATE TABLE Sales_order_info AS
SELECT 
    Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Discount,
    Profit
FROM sales_purchase_data;

select * from Sales_order_info limit 20;
=====================================================================================================================
>>>>product id should be  in this format,ex FUR-BO-10001798 to 10001798

SELECT 
    REPLACE(SUBSTRING(Product_ID, 9), '-', '') AS Product_ID
FROM Sales_order_info;
========================================================================================================================
>>>>DOUBT<<<<
>>>>per_quantity_price should be  output of Sales / Quantity of each customer records

SELECT 
 Sales / Quantity AS per_quantity_price
FROM Sales_order_info;
========================================================================================================================
>>>>sales_type should be 3 categories
SELECT 
CASE 
        WHEN Sales > 1000 THEN 'Super'
        WHEN Sales > 400 AND Sales <= 1000 THEN 'Average'
        ELSE 'Low'
    END AS sales_type
FROM Sales_order_info;
 ==========================================================================================================================
 >>>>Loss will be 1 if profit is negative
SELECT 
CASE 
        WHEN Profit < 0 THEN 1
        ELSE profit
    END AS Loss
FROM Sales_order_info;
=============================================================================================================================
>>>>Count of distinct order_ids in  sales_purchase_data_updated table

SELECT COUNT(DISTINCT Order_ID) AS distinct_order_count
FROM sales_purchase_data_updated;
===============================================================================================================================
>>>>Count of Unique product names in Sales_order_info

SELECT COUNT(DISTINCT Product_Name) AS unique_product_count
FROM Sales_order_info;
===============================================================================================================================
>>>>Count of distinct Segments in sales_purchase_data_updated table

SELECT COUNT(DISTINCT Segment) AS distinct_segment_count
FROM sales_purchase_data_updated;

select segment from sales_purchase_data_updated;
==================================================================================================================================
>>>>Recent order date in  sales_purchase_data_updated table

select Order_Date from sales_purchase_data_updated;

SELECT MAX(Order_Date) AS recent_order_date
FROM sales_purchase_data_updated;
================================================================================================================
>>>>Old order date in sales_purchase_data_updated table

SELECT MIN(Order_Date) AS old_order_date
FROM sales_purchase_data_updated;
=================================================================================================================
>>>>Customer info of all the columns for the maximum order date

SELECT *
FROM sales_purchase_data_updated
WHERE Order_Date = (
    SELECT MAX(Order_Date)
    FROM sales_purchase_data_updated
);
====================================================================================================================
>>>>Customer info of all the columns for the minimum order date

SELECT *
FROM sales_purchase_data_updated
WHERE Order_Date = (
    SELECT MIN(Order_Date)
    FROM sales_purchase_data_updated
);
====================================================================================================================
>>>>No .of Unique Customers from Texas and New york

SELECT 
    COUNT(DISTINCT CASE WHEN State = 'Texas' THEN Customer_Name END) AS No_of_cust_Texas,
    COUNT(DISTINCT CASE WHEN State = 'New York' THEN Customer_Name END) AS No_of_cust_New_York
FROM sales_purchase_data_updated;
=====================================================================================================================





