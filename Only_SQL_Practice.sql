use sys;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, Department, Salary)
VALUES
(101, 'Ritik', 'Sales', 15000),
(102, 'Suraj', 'Finance', 20000),
(103, 'Vikash', 'HR', 25000),
(104, 'Raj', 'IT', 18000),
(105, 'Kunal', 'Marketing', 23000);

SELECT * FROM employees;

ALTER table employees 
ADD COLUMN Age INT ;
ALTER table employees
ADD COLUMN City VARCHAR(50);
ALTER table employees
ADD COLUMN JoiningDate DATE ;
ALTER table employees
ADD COLUMN Email VARCHAR(100);
ALTER table Employees
ADD COLUMN Experience DECIMAL(3,1)  DEFAULT 0.0;

-- MODIFY --
ALTER table Employees
MODIFY COLUMN EmpName VARCHAR(100) ;
-- my query --
ALTER TABLE Employees
MODIFY COLUMN Email INT;
ALTER TABLE Employees
MODIFY COLUMN Department VARCHAR(100) ;
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(12,2);
ALTER TABLE Employees
MODIFY COLUMN EmpID BIGINT;
ALTER TABLE Employees
MODIFY COLUMN EmpName VARCHAR(100) NOT NULL ;

-- RENAME COLUMN --

ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName ;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, StudentName, Course, Marks, City)
VALUES
(1, 'Amit', 'Python', 85, 'Ranchi'),
(2, 'Rahul', 'SQL', 78, 'Bokaro'),
(3, 'Priya', 'Excel', 92, 'Dhanbad'),
(4, 'Neha', 'Power BI', 88, 'Jamshedpur'),
(5, 'Vikas', 'Python', 75, 'Ranchi');

SELECT * FROM Students ;

ALTER TABLE students
RENAME COLUMN StudentName TO Name ;
ALTER TABLE Students
RENAME COLUMN Course TO CourseName;
ALTER TABLE students
RENAME COLUMN Marks TO Score;
ALTER TABLE Students
RENAME column StudentID TO ID ;
ALTER TABLE students
RENAME 	column City TO StudentCity ;

-- DROP COLUMN --

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Supplier VARCHAR(50),
    Discount INT
);

INSERT INTO Products
(ProductID, ProductName, Category, Price, Stock, Supplier, Discount)
VALUES
(101, 'Laptop', 'Electronics', 55000, 10, 'Dell', 5),
(102, 'Mouse', 'Accessories', 800, 25, 'Logitech', 10),
(103, 'Keyboard', 'Accessories', 1500, 18, 'HP', 8),
(104, 'Monitor', 'Electronics', 12000, 12, 'Samsung', 7),
(105, 'Printer', 'Electronics', 15000, 6, 'Canon', 12);

SELECT * FROM Products ;

ALTER TABLE products 
DROP COLUMN Discount ;
ALTER TABLE Products
DROP COLUMN Supplier ;
ALTER TABLE products
DROP COLUMN Stock ;
ALTER TABLE products
DROP COLUMN Category ;
ALTER TABLE products
DROP COLUMN price ;

-- RENAME TABLE --

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(50),
    Author VARCHAR(50),
    Price INT
);

INSERT INTO Books VALUES
(1, 'Atomic Habits', 'James Clear', 500),
(2, 'Ikigai', 'Hector Garcia', 350),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 450);    

SELECT * FROM LibraryBooks;


CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(50),
    Genre VARCHAR(30),
    Rating DECIMAL(2,1)
);

INSERT INTO Movies VALUES
(101, 'Inception', 'Sci-Fi', 8.8),
(102, '3 Idiots', 'Drama', 8.4),
(103, 'Dangal', 'Sports', 8.3);

SELECT * FROM FilmCollection ;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration INT,
    Fees INT
);

INSERT INTO Courses VALUES
(1, 'Python', 6, 5000),
(2, 'SQL', 4, 3500),
(3, 'Power BI', 3, 4000);

SELECT * FROM TrainingCourses ;

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Airline VARCHAR(50),
    Destination VARCHAR(50),
    TicketPrice INT
);

INSERT INTO Flights VALUES
(501, 'IndiGo', 'Delhi', 4500),
(502, 'Air India', 'Mumbai', 5200),
(503, 'Vistara', 'Bangalore', 6100);

SELECT * FROM FlightSchedule ;

CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(50),
    City VARCHAR(50),
    Beds INT
);

INSERT INTO Hospitals VALUES
(1, 'City Hospital', 'Ranchi', 100),
(2, 'Life Care', 'Bokaro', 75),
(3, 'Medicare', 'Dhanbad', 120);

SELECT * FROM MedicalCenters ;

RENAME TABLE Books TO LibraryBooks ;
RENAME TABLE Movies TO FilmCollection ;
RENAME TABLE Courses TO TrainingCourses ;
RENAME TABLE Flights TO FlightSchedule ;
RENAME TABLE Hospitals TO MedicalCenters ;

-- CHANGE COLUMN --

CREATE TABLE AdventureTrips (
    TripID INT PRIMARY KEY,
    TripName VARCHAR(50),
    Location VARCHAR(50),
    Participants INT,
    Price INT,
    GuideName VARCHAR(50)
);

INSERT INTO AdventureTrips
(TripID, TripName, Location, Participants, Price, GuideName)
VALUES
(101, 'Mountain Trek', 'Manali', 12, 8500, 'Arjun'),
(102, 'River Rafting', 'Rishikesh', 8, 4500, 'Rohan'),
(103, 'Desert Safari', 'Jaisalmer', 15, 6000, 'Kabir'),
(104, 'Forest Camping', 'Jim Corbett', 10, 5500, 'Aditya'),
(105, 'Scuba Diving', 'Goa', 6, 9000, 'Varun');

SELECT * FROM AdventureTrips ;

ALTER TABLE adventuretrips
CHANGE COLUMN TripName AdventureName VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Location Destination VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Participants TotalParticipants SMALLINT ;
ALTER TABLE adventuretrips
CHANGE COLUMN Price TripPrice DECIMAL(10,2);
ALTER TABLE adventuretrips
CHANGE COLUMN GuideName TripGuide VARCHAR(100) NOT NULL ;

-- UPDATE --

CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Product VARCHAR(50),
    Amount INT,
    Status VARCHAR(20),
    Discount INT
);

INSERT INTO CustomerOrders
(OrderID, CustomerName, City, Product, Amount, Status, Discount)
VALUES
(201, 'Aman', 'Ranchi', 'Laptop', 55000, 'Pending', 5),
(202, 'Rahul', 'Pune', 'Mobile', 30000, 'Delivered', 10),
(203, 'Priya', 'Delhi', 'Tablet', 22000, 'Pending', 0),
(204, 'Neha', 'Pune', 'Laptop', 65000, 'Shipped', 8),
(205, 'Rohit', 'Mumbai', 'Headphones', 5000, 'Delivered', 5),
(206, 'Sneha', NULL, 'Mobile', 28000, 'Pending', 0),
(207, 'Karan', 'Delhi', 'Laptop', 70000, 'Pending', 10),
(208, 'Anjali', 'Ranchi', 'Tablet', 18000, 'Delivered', 5);

SELECT * FROM CustomerOrders ;

SET SQL_SAFE_UPDATES = 0;

-- Aman ke order ka Status 'Delivered' kar do 
UPDATE CustomerOrders
SET status= 'Delivered' 
WHERE customerName= 'Aman' ;

-- Jin orders ka City = 'Pune' hai, unka Discount 2 se increase kar do.
UPDATE customerOrders
SET Discount= Discount + 2
WHERE City= 'Pune' ;

-- OrderID = 203 wale customer ka:
-- Amount → 25000
-- Status → 'Shipped'
UPDATE customerOrders
SET Amount= 25000 , Status= 'Shipped' 
WHERE orderID= 203;

-- Jin orders ka Status = 'Pending' hai, unke Discount mein 5 add karo
UPDATE customerOrders
SET Discount= Discount + 5
WHERE  Status= 'Pending' ;

-- Jin orders ka City 'Pune' nahi hai, unka Status 'Processing' kar do.
UPDATE customerOrders
SET Status= 'Processing'
WHERE City != 'Pune';


-- Jin orders ka:
-- Amount > 50000
-- AND
-- Status = 'Pending'
-- hai, unka Discount 10 kar do.
UPDATE customerorders
SET Discount= 10
WHERE amount > 50000 AND status= 'Pending' ; 

-- Jin orders ka:
-- City = 'Delhi' OR  City = 'Ranchi'
-- hai, unka Status 'Priority' kar do.
UPDATE customerOrders
SET Status= 'Priority'
WHERE city= 'Delhi' OR city= 'Ranchi' ;

-- Jin orders ka City NULL hai, unka City 'Unknown' kar do.
UPDATE customerOrders
SET city= 'Unknown'
WHERE city IS NULL ;

SET SQL_SAFE_UPDATES = 1;

-- DELETE --

CREATE TABLE MovieTickets (
    TicketID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    MovieName VARCHAR(50),
    City VARCHAR(30),
    TicketPrice INT,
    Seats INT,
    Status VARCHAR(20)
);

INSERT INTO MovieTickets
(TicketID, CustomerName, MovieName, City, TicketPrice, Seats, Status)
VALUES
(401, 'Arjun', 'Pushpa 2', 'Ranchi', 250, 2, 'Booked'),
(402, 'Riya', 'Jawan', 'Delhi', 300, 3, 'Booked'),
(403, 'Karan', 'Pathaan', 'Mumbai', 200, 1, 'Cancelled'),
(404, 'Neha', 'Dunki', 'Pune', 350, 4, 'Booked'),
(405, 'Aman', 'Animal', 'Ranchi', 180, 2, 'Cancelled'),
(406, 'Priya', 'Jawan', 'Delhi', 300, 5, 'Booked'),
(407, 'Rahul', 'Dunki', 'Mumbai', 350, 1, 'Cancelled'),
(408, 'Sneha', 'Pathaan', 'Pune', 200, 3, 'Booked'),
(409, 'Vikas', 'Animal', 'Ranchi', 180, 1, 'Cancelled'),
(410, 'Anjali', 'Pushpa 2', 'Delhi', 250, 2, 'Booked');

SELECT * FROM MovieTickets ;

-- TicketID = 403 wala record delete karo.
DELETE FROM MovieTickets
WHERE TicketID= 403;

SET SQL_SAFE_UPDATES= 0;

-- Jin tickets ka Status = 'Cancelled' hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE status= 'Cancelled' ;

-- Jin tickets ka TicketPrice 200 se kam hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE ticketprice < 200 ;

-- Jin tickets ka:
-- City = 'Delhi' AND Seats >= 3
-- hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE City= 'Delhi' AND Seats >= 3;

-- Jin tickets ka:
-- City = 'Ranchi' OR City = 'Pune'
DELETE FROM MovieTickets
WHERE city= 'Ranchi' OR city= 'Pune' ;

-- Jin tickets ka:
-- TicketPrice > 200 AND Status != 'Cancelled'
-- hai, unhe delete karo.
DELETE FROM MovieTickets
WHERE TicketPrice > 200 AND Status != 'Cancelled' ;

-- TRUNCATE --

CREATE TABLE TravelBookings (
    BookingID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Destination VARCHAR(50),
    Amount INT
);

INSERT INTO TravelBookings VALUES
(101, 'Aman', 'Goa', 12000),
(102, 'Riya', 'Manali', 18000),
(103, 'Karan', 'Jaipur', 9000);
SELECT * FROM TravelBookings ;

-- TravelBookings table ka saara data remove karo using TRUNCATE.
TRUNCATE TABLE TravelBookings ;

CREATE TABLE GameScores (
    ScoreID INT PRIMARY KEY,
    PlayerName VARCHAR(50),
    Game VARCHAR(50),
    Score INT
);

INSERT INTO GameScores VALUES
(1, 'Rahul', 'Cricket', 85),
(2, 'Vikas', 'Football', 92),
(3, 'Neha', 'Badminton', 78);
SELECT * FROM GameScores ;

-- GameScores table ka poora data clear karo using TRUNCATE.
TRUNCATE TABLE GameScores;

CREATE TABLE FoodOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    FoodItem VARCHAR(50),
    Amount INT
);

INSERT INTO FoodOrders VALUES
(201, 'Amit', 'Pizza', 450),
(202, 'Priya', 'Burger', 250),
(203, 'Rohit', 'Pasta', 350);
SELECT * FROM FoodOrders ;

-- FoodOrders ka saara data ek saath delete karo, lekin table ko delete nahi karna hai.
TRUNCATE TABLE FoodOrders ;

CREATE TABLE EventTickets (
    TicketID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    EventName VARCHAR(50),
    TicketPrice INT
);

INSERT INTO EventTickets VALUES
(301, 'Arjun', 'Concert', 1500),
(302, 'Simran', 'Comedy Show', 800),
(303, 'Kunal', 'Music Fest', 2000);
SELECT * FROM EventTickets;

-- EventTickets table ko completely empty karo using the correct command.
TRUNCATE TABLE EventTickets ;

CREATE TABLE FitnessMembers (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50),
    Plan VARCHAR(30),
    Fees INT
);

INSERT INTO FitnessMembers VALUES
(401, 'Varun', 'Monthly', 1500),
(402, 'Sneha', 'Quarterly', 4000),
(403, 'Aditya', 'Yearly', 12000);
SELECT * FROM FitnessMembers ;

-- FitnessMembers ka saara existing data remove karo, but table structure aur columns ko maintain rakhna hai.
TRUNCATE TABLE FitnessMembers ;

CREATE TABLE OnlineCourses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Instructor VARCHAR(50),
    Fees INT
);

INSERT INTO OnlineCourses VALUES
(501, 'Python', 'Rahul Sharma', 5000),
(502, 'SQL', 'Amit Verma', 4000),
(503, 'Power BI', 'Neha Singh', 6000);
SELECT * FROM OnlineCourses ;

-- OnlineCourses table ko empty karo using TRUNCATE, aur kisi bhi row ko individually delete karne ke liye DELETE use nahi karna hai.
TRUNCATE TABLE OnlineCourses ;






