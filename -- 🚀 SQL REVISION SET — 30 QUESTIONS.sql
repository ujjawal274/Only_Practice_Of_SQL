CREATE database Smile;
use Smile;

-- 🚀 SQL REVISION SET — 30 QUESTIONS

-- 📋 TABLE 1 — RetailSales
CREATE TABLE RetailSales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(30),
    City VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2)
);

INSERT INTO RetailSales
(SaleID, Product, Category, City, Quantity, Price)
VALUES
(101, 'Laptop', 'Electronics', 'Ranchi', 2, 55000),
(102, 'Mouse', 'Accessories', 'Delhi', 5, 800),
(103, 'Keyboard', 'Accessories', 'Ranchi', 3, 1500),
(104, 'Monitor', 'Electronics', 'Mumbai', 2, 12000),
(105, 'Laptop', 'Electronics', 'Delhi', 1, 55000),
(106, 'Headphones', 'Accessories', 'Mumbai', 4, 2500),
(107, 'Printer', 'Electronics', 'Ranchi', 1, 15000),
(108, 'Mouse', 'Accessories', 'Delhi', 3, 800);
SELECT * FROM RetailSales;

-- Q1 📝 Exam Type
-- RetailSales table se Product, City aur Quantity display karo.
SELECT Product, City, Quantity FROM RetailSales;

-- Q2 📝 Exam Type
-- Sirf un sales records ko display karo jahan Price 10000 se greater hai.

-- Q3 🔮 Output Prediction
-- Is query ka output predict karo:
SELECT DISTINCT City
FROM RetailSales
ORDER BY City;

-- Ans./Output- 
-- After DISTINCT
-- city 
-- Ranchi 
-- Delhi
-- Mumbai 
-- After ORDER BY city
-- Delhi
-- Mumbai
-- Ranchi

-- Q4 📝 Exam Type
-- Delhi aur Ranchi city ke records find karo using IN.
SELECT * FROM retailSales
WHERE city IN ('Delhi','Ranchi');

-- Q5 📊 Data Analyst Real Task
-- Har Category ka total Quantity find karo.
SELECT category, sum(quantity) AS total_Quantity 
FROM retailSales
GROUP BY category;


-- 📋 TABLE 2 — CafeOrders
CREATE TABLE CafeOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Item VARCHAR(40),
    Category VARCHAR(30),
    Quantity INT,
    Amount DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO CafeOrders
(OrderID, CustomerName, Item, Category, Quantity, Amount, City)
VALUES
(201, 'Aman', 'Burger', 'Fast Food', 2, 300, 'Ranchi'),
(202, 'Riya', 'Pizza', 'Fast Food', 1, 450, 'Delhi'),
(203, 'Karan', 'Coffee', 'Beverage', 3, 360, 'Ranchi'),
(204, 'Neha', 'Pasta', 'Italian', 2, 500, 'Mumbai'),
(205, 'Aman', 'Coffee', 'Beverage', 2, 240, 'Delhi'),
(206, 'Vikas', 'Burger', 'Fast Food', 3, 450, 'Mumbai'),
(207, 'Priya', 'Pizza', 'Fast Food', 2, 900, 'Ranchi'),
(208, 'Rohit', 'Pasta', 'Italian', 1, 250, 'Delhi');
SELECT * FROM cafeOrders;

-- Q6 🔮 Output Prediction
-- Is query ka output predict karo:
SELECT COUNT(*)
FROM CafeOrders
WHERE City = 'Ranchi';

-- Ans- 
-- COUNT(*)
-- 3

-- Q7 📝 Exam Type
-- CafeOrders ka total Amount find karo.
SELECT sum(amount) AS total_amount FROM cafeOrders;

-- Q8 📝 Exam Type
-- Har City ka average Amount find karo.
SELECT city, avg(amount) AS Average_Amount 
FROM cafeOrders 
GROUP BY city;

-- Q9 📊 Data Analyst Real Task
-- Har Category ka total sales amount find karo.
SELECT category, sum(Amount) AS total_sales 
FROM cafeOrders
GROUP BY category;

-- Q10 💼 Interview Type
-- WHERE aur HAVING mein simple difference batao aur ek example do.
-- Ans- 

-- WHERE - ye table ke records ko filter karta h
-- HAVING - ye groups/ Aggregate_function ko filter karta h.

-- 📋 TABLE 3 — CourseEnrollments
CREATE TABLE CourseEnrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(40),
    City VARCHAR(30),
    Fees INT,
    Score INT
);

INSERT INTO CourseEnrollments
(EnrollmentID, StudentName, Course, City, Fees, Score)
VALUES
(301, 'Amit', 'Python', 'Ranchi', 5000, 85),
(302, 'Rahul', 'SQL', 'Delhi', 4000, 78),
(303, 'Priya', 'Python', 'Ranchi', 5000, 92),
(304, 'Neha', 'Power BI', 'Mumbai', 6000, 88),
(305, 'Vikas', 'SQL', 'Ranchi', 4000, 75),
(306, 'Sneha', 'Excel', 'Delhi', 3500, 90),
(307, 'Arjun', 'Power BI', 'Delhi', 6000, 82),
(308, 'Karan', 'SQL', 'Mumbai', 4000, 69);
SELECT * FROM courseEnrollments;

-- Q11 📝 Exam Type
-- Score 80 se 90 ke beech wale students find karo using BETWEEN. 
SELECT * FROM courseEnrollments 
WHERE score BETWEEN 80 AND 90 ;

-- Q12 🔮 Output Prediction
-- Is query ka output predict karo:
SELECT MAX(Score)
FROM CourseEnrollments;

-- Ans-
-- MAX(score)
-- 92

-- Q13 📊 Data Analyst Real Task
-- Har course ke students ki average score find karo.
SELECT course, avg(score) AS average_score
FROM courseEnrollments
GROUP BY course ;











