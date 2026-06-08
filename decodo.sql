CREATE DATABASE DecodeLabs_2;
USE DecodeLabs_2;
CREATE TABLE sales_data (
    OrderID INT,
    Date DATE,
    CustomerID INT,
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(100),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);
SELECT COUNT(*)
FROM sales_data;
SELECT * FROM sales_data;
SELECT Product, Quantity, TotalPrice
FROM sales_data;
SELECT COUNT(*) AS Total_Orders
FROM sales_data;
SELECT Product,
       COUNT(*) AS Orders_Count
FROM sales_data
GROUP BY Product
ORDER BY Orders_Count DESC;
SELECT Product,
       SUM(TotalPrice) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC;
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM sales_data;
SELECT *
FROM sales_data
WHERE PaymentMethod = 'Online';
