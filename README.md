# 🗄️ SQL Practice & Database Management

<div align="center">

![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Practice-336791?style=for-the-badge&logo=databricks&logoColor=white)
![DDL](https://img.shields.io/badge/DDL-CREATE%20%7C%20ALTER%20%7C%20RENAME-8E44AD?style=for-the-badge)
![DML](https://img.shields.io/badge/DML-INSERT%20%7C%20UPDATE%20%7C%20DELETE-E67E22?style=for-the-badge)
![CRUD](https://img.shields.io/badge/CRUD-Operations-16A085?style=for-the-badge)
![Hands On](https://img.shields.io/badge/Hands--On-SQL%20Practice-27AE60?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Management-2C3E50?style=for-the-badge)
![Learning](https://img.shields.io/badge/Learning-In%20Progress-F1C40F?style=for-the-badge)

</div>

---

# 👋 Welcome to My SQL Practice Repository!

Hello everyone! 👋

Welcome to my **SQL Practice & Database Management** repository.

This repository contains my hands-on SQL practice using **MySQL**, where I am learning and practicing different SQL concepts through practical queries, multiple datasets, and real-world-style examples.

The main goal of this project is to strengthen my **SQL fundamentals, query-writing, and database management skills**.

---

## 📌 About This Project

This repository contains a collection of SQL queries and practice exercises created while learning SQL.

The project covers database and table creation, inserting records, retrieving data, modifying table structures, updating records, deleting records, and working with different SQL conditions.

Instead of focusing only on theory, this project focuses on **learning SQL by writing and executing queries practically**.

---

## 🎯 Project Objectives

- Learn SQL fundamentals through hands-on practice
- Understand database and table creation
- Practice inserting and retrieving data
- Learn different SQL data types
- Work with Primary Keys
- Modify existing table structures
- Add new columns
- Modify column definitions
- Rename columns
- Drop columns
- Rename tables
- Change column names and definitions
- Update existing records
- Delete records using conditions
- Practice conditional SQL queries
- Improve SQL query-writing skills
- Build a strong foundation for Data Analytics

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Database Management |
| 💻 **SQL** | Query Language |
| 🧰 **MySQL Workbench** | Query Writing & Execution |
| 📄 **SQL File** | Practice Script |

---

# 📚 SQL Topics Covered

## 1️⃣ Database & Table Creation

The project includes creating and working with databases and multiple tables.

Basic command:

```sql
CREATE TABLE
```

Tables used in the project include:

- `Employees`
- `Students`
- `Products`
- `Books`
- `Movies`
- `Courses`
- `Flights`
- `Hospitals`
- `AdventureTrips`
- `CustomerOrders`
- `MovieTickets`

---

## 2️⃣ INSERT Statement

The `INSERT INTO` statement is used to add records to tables.

Example:

```sql
INSERT INTO Employees
(EmpID, EmpName, Department, Salary)
VALUES
(101, 'Ritik', 'Sales', 15000);
```

---

## 3️⃣ SELECT Statement

The `SELECT` statement is used to retrieve data from tables.

Example:

```sql
SELECT *
FROM Employees;
```

Specific columns can also be selected:

```sql
SELECT EmpName, Salary
FROM Employees;
```

---

# 🔧 ALTER TABLE Operations

A major part of this project focuses on modifying existing table structures using `ALTER TABLE`.

## ➕ ADD COLUMN

```sql
ALTER TABLE Employees
ADD COLUMN Age INT;
```

Columns practiced include:

- `Age`
- `City`
- `JoiningDate`
- `Email`
- `Experience`

## ✏️ MODIFY COLUMN

```sql
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(12,2);
```

## 🔄 RENAME COLUMN

```sql
ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;
```

## 🗑️ DROP COLUMN

```sql
ALTER TABLE Products
DROP COLUMN Discount;
```

## 🔁 RENAME TABLE

```sql
RENAME TABLE Books TO LibraryBooks;
```

Other examples:

```text
Movies      → FilmCollection
Courses     → TrainingCourses
Flights     → FlightSchedule
Hospitals   → MedicalCenters
```

## 🔀 CHANGE COLUMN

The `CHANGE COLUMN` command is used to change both the column name and its definition.

```sql
ALTER TABLE AdventureTrips
CHANGE COLUMN TripName AdventureName VARCHAR(100);
```

Other changes include:

```text
TripName      → AdventureName
Location      → Destination
Participants  → TotalParticipants
Price         → TripPrice
GuideName     → TripGuide
```

---

# 🔄 UPDATE Operations

The project contains practical `UPDATE` queries for modifying existing records.

Example:

```sql
UPDATE CustomerOrders
SET Status = 'Delivered'
WHERE CustomerName = 'Aman';
```

### UPDATE with AND

```sql
UPDATE CustomerOrders
SET Discount = 10
WHERE Amount > 50000
AND Status = 'Pending';
```

### UPDATE with OR

```sql
UPDATE CustomerOrders
SET Status = 'Priority'
WHERE City = 'Delhi'
OR City = 'Ranchi';
```

### UPDATE NULL values

```sql
UPDATE CustomerOrders
SET City = 'Unknown'
WHERE City IS NULL;
```

---

# 🗑️ DELETE Operations

The project includes practical `DELETE` queries.

Example:

```sql
DELETE FROM MovieTickets
WHERE TicketID = 403;
```

### DELETE using condition

```sql
DELETE FROM MovieTickets
WHERE Status = 'Cancelled';
```

### DELETE using comparison

```sql
DELETE FROM MovieTickets
WHERE TicketPrice < 200;
```

### DELETE using AND

```sql
DELETE FROM MovieTickets
WHERE City = 'Delhi'
AND Seats >= 3;
```

### DELETE using OR

```sql
DELETE FROM MovieTickets
WHERE City = 'Ranchi'
OR City = 'Pune';
```

# 🗑️ TRUNCATE Operations

The project also includes practical `TRUNCATE` queries.


---

# 🗂️ Practice Datasets

| Table | Data / Practice Area |
|---|---|
| 👨‍💼 `Employees` | Employee information |
| 🎓 `Students` | Student, course and marks data |
| 🛒 `Products` | Product and inventory data |
| 📚 `Books` | Book information |
| 🎬 `Movies` | Movie and rating data |
| 📖 `Courses` | Course and fee information |
| ✈️ `Flights` | Airline and ticket information |
| 🏥 `Hospitals` | Hospital and bed information |
| 🏔️ `AdventureTrips` | Trip and participant information |
| 🛍️ `CustomerOrders` | Customer order information |
| 🎟️ `MovieTickets` | Movie ticket booking information |

---

# 🧠 SQL Concepts Practiced

```text
CREATE DATABASE
CREATE TABLE
INSERT INTO
SELECT
ALTER TABLE

ADD COLUMN
MODIFY COLUMN
RENAME COLUMN
DROP COLUMN
RENAME TABLE
CHANGE COLUMN

UPDATE
DELETE

WHERE
AND
OR
!=
IS NULL

PRIMARY KEY

INT
BIGINT
VARCHAR
DECIMAL
DATE

DEFAULT
NOT NULL
```

---

# 🔑 Constraints & Column Properties

### PRIMARY KEY

```sql
EmpID INT PRIMARY KEY
```

### NOT NULL

```sql
EmployeeName VARCHAR(100) NOT NULL
```

### DEFAULT

```sql
Experience DECIMAL(3,1) DEFAULT 0.0
```

---

# ⚠️ SQL Safe Updates

While practicing `UPDATE` and `DELETE`, SQL Safe Updates is also handled.

Disable:

```sql
SET SQL_SAFE_UPDATES = 0;
```

Enable again:

```sql
SET SQL_SAFE_UPDATES = 1;
```

---

# 📈 Learning Progress

```text
                    SQL Fundamentals
                           │
                           ▼
                    CREATE DATABASE
                           │
                           ▼
                      CREATE TABLE
                           │
                           ▼
                      INSERT DATA
                           │
                           ▼
                      SELECT DATA
                           │
                           ▼
                      ALTER TABLE
                           │
          ┌────────────────┼────────────────┐
          ▼                ▼                ▼
      ADD COLUMN      MODIFY COLUMN    RENAME COLUMN
          │                │                │
          └────────────────┼────────────────┘
                           ▼
                     DROP COLUMN
                           │
                           ▼
                     RENAME TABLE
                           │
                           ▼
                    CHANGE COLUMN
                           │
                           ▼
                         UPDATE
                           │
                           ▼
                         DELETE
                           │
                           ▼
                    More SQL Practice 🚀
```

---

# 💡 Skills Developed

- 🗃️ Database Management
- 🧱 Table Creation
- ✍️ SQL Query Writing
- 🔍 Data Retrieval
- 🔧 Table Structure Modification
- ➕ Adding Columns
- ✏️ Modifying Columns
- 🔄 Renaming Columns
- 🗑️ Dropping Columns
- 🔁 Renaming Tables
- 🔀 Changing Column Definitions
- 🔄 Updating Records
- ❌ Deleting Records
- 🧩 Conditional Query Writing
- 🔑 Working with Primary Keys
- 📊 Understanding SQL Data Types

---

# 🚀 How to Run This Project

### Step 1 — Install MySQL

Install MySQL and MySQL Workbench on your system.

### Step 2 — Open MySQL Workbench

Launch MySQL Workbench and connect to your MySQL server.

### Step 3 — Open the SQL File

Open:

```text
Only_SQL_Practice.sql
```

### Step 4 — Execute Queries

Run the SQL queries step-by-step in MySQL Workbench.

### Step 5 — Practice & Experiment

Modify the queries and try creating your own SQL practice questions.

---

# 📁 Project Structure

```text
SQL-Practice/
│
├── Only_SQL_Practice.sql
│
└── README.md
```

---

# 🏆 Project Highlights

| Area | Status |
|---|---|
| 🗄️ Database & Tables | ✅ Practiced |
| ➕ ADD COLUMN | ✅ Practiced |
| ✏️ MODIFY COLUMN | ✅ Practiced |
| 🔄 RENAME COLUMN | ✅ Practiced |
| 🗑️ DROP COLUMN | ✅ Practiced |
| 🔁 RENAME TABLE | ✅ Practiced |
| 🔀 CHANGE COLUMN | ✅ Practiced |
| 🔄 UPDATE | ✅ Practiced |
| ❌ DELETE | ✅ Practiced |
| 🧠 SQL Problem Solving | 🚀 Improving |

---

# 🎯 Project Goal

The main goal of this project is to strengthen my SQL fundamentals through **consistent hands-on practice**.

By working with different datasets and practical scenarios, I am improving my ability to understand tables, write SQL queries, modify database structures, and manipulate data.

---

# 📌 Current Learning Focus

> **Building strong SQL fundamentals through practical query writing and database operations.**

---

# 🔮 Future Learning Goals

After strengthening the current SQL concepts, the learning path can continue toward:

- 🔗 SQL JOINs
- 📊 Aggregate Functions
- 📦 GROUP BY
- 🎯 HAVING
- 🪆 Subqueries
- ⚡ CASE Statements
- 👁️ Views
- 🔢 Window Functions
- 🧩 Common Table Expressions (CTEs)
- 🚀 Advanced SQL Practice

---

# 📊 Data Analyst Connection

SQL is an important skill for working with data.

This project helps build a foundation for:

```text
Data Retrieval
      ↓
Data Filtering
      ↓
Data Modification
      ↓
Database Management
      ↓
Data Analysis
      ↓
Data Analyst Skills 🚀
```

---

# 🤝 Contributing

Contributions are always welcome! 🎉

If you have suggestions, improvements, or new SQL practice ideas, feel free to contribute.

### How to contribute:

1. ⭐ Fork this repository
2. 🌿 Create a new branch
3. 💻 Make your changes
4. 📌 Commit your changes
5. 🚀 Create a Pull Request

You can contribute by:

- Adding new SQL practice questions
- Improving existing queries
- Adding new datasets
- Fixing errors
- Improving documentation
- Sharing useful SQL concepts

Every contribution helps make this project better! 🙌

---

# 👨‍💻 Author

<div align="center">

## **Ujjawal   Kumar**

🎯 Learning **SQL & Data Analytics**

💻 Practicing SQL through hands-on datasets and practical problems.

</div>

---

# ⭐ Support This Project

If you found this SQL practice repository useful or helpful, please consider giving it a **⭐ Star**.

Your support motivates me to keep learning, practicing, and adding more SQL concepts to this repository. 🚀

<div align="center">

### ⭐ Star this repository if you found it useful!

### 🤝 Contributions are always welcome!

### 🧡 Thanks for visiting my repository!

</div>

---

<div align="center">

# 🙏 Thank You for Visiting!

**Keep Learning • Keep Practicing • Keep Growing 🚀**

### 🗄️ Built with SQL | 🐬 Practiced with MySQL | 💻 Learning by Doing

</div>
