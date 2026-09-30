# Data_Digger SQL Project -- README

## 📌 Introduction

This project demonstrates a complete SQL workflow using **MySQL
8.0.44**, including: - Database creation\
- Table creation\
- CRUD operations (Create, Read, Update, Delete)\
- Constraints & relationships\
- Useful SQL queries for reporting

This README helps beginners understand how to run SQL scripts easily
inside MySQL Workbench.

------------------------------------------------------------------------

## 🛠 Installing MySQL 8.0.44 (Simple Steps)

### **1. Download MySQL**

1.  Go to **MySQL Official Website**\
2.  Download **MySQL Community Server 8.0.44**\
3.  Select your operating system (Windows)

### **2. Install MySQL**

During installation: - Choose **Developer Default** - Set a password for
the **root** user - Install **MySQL Workbench** (GUI tool)

### **3. Open MySQL Workbench**

-   Click **Local instance MySQL 8.0**
-   Enter your root password
-   Start writing queries in the SQL editor

------------------------------------------------------------------------

## 📦 Database & Tables Overview

This project contains **4 tables**:

### **1. Customers**

Stores customer details.\
Columns: `CustomerID, Name, Email, Address`

### **2. Orders**

Stores customer orders.\
Has **foreign key**: `CustomerID → Customers.CustomerID`

### **3. Products**

Stores product information.

### **4. OrderDetails**

Stores each product ordered inside an order.\
Foreign keys:\
- `OrderID → Orders.OrderID`\
- `ProductID → Products.ProductID`

------------------------------------------------------------------------

## 🔧 CRUD Operations Summary

### **CREATE**

-   Creating database
-   Creating tables
-   Inserting data

### **READ**

Examples: - `SELECT * FROM Customers;` - Filter orders of a customer\
- Sort products\
- Get max/min/avg values

### **UPDATE**

Examples: - Updating customer address\
- Updating product price\
- Updating order total

### **DELETE**

Examples: - Delete a customer\
- Delete products with zero stock\
- Delete order record

------------------------------------------------------------------------

## 🚀 How to Run the SQL Script

1.  Open **MySQL Workbench**
2.  Click on **File → New SQL Tab**
3.  Copy--paste your full SQL script
4.  select line by line for run
5.  Press **Ctrl + Enter** to run it

------------------------------------------------------------------------

## 📂 Files Included

-   `README.md` (you are reading it)
-   SQL script (your main code)

------------------------------------------------------------------------

## ✅ Conclusion

This SQL project covers: ✔ Database creation\
✔ Table creation\
✔ Foreign keys\
✔ CRUD operations\
✔ Reporting queries

It is perfect for learning MySQL basics in version **8.0.44**.

------------------------------------------------------------------------

