CREATE DATABASE Data_digger;
USE Data_digger;

## table 1: Customers ##
CREATE TABLE Customers (CustomerID INT PRIMARY KEY, Name VARCHAR(50),Email VARCHAR(100),Address VARCHAR(100));

INSERT INTO Customers (CustomerID, Name, Email, Address) VALUES
(1, 'Meet', 'meet@example.com', '123 Park Street'),
(2, 'Archi', 'archi@example.com', '45 Hill Road'),
(3, 'Megha', 'megha@example.com', '9 Green Avenue'),
(4, 'Hinal', 'hinal@example.com', '67 River Lane'),
(5, 'Priyank', 'priyank@example.com', '89 Lake View');

SELECT * FROM Customers;

UPDATE Customers SET Address = '101 New City Road' WHERE CustomerID = 3;

DELETE FROM Customers WHERE CustomerID = 5;

SELECT * FROM Customers WHERE Name = 'Meet';

## table 2: Orders ##
CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT,OrderDate DATE, TotalAmount DECIMAL(10, 2), 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2025-10-20', 45.99),
(102, 2, '2025-10-25', 120.50),
(103, 3, '2025-11-05', 88.00),
(104, 4, '2025-11-10', 25.75),
(105, 4, '2025-11-12', 300.00); 

SELECT * FROM Orders WHERE CustomerID = 1;

UPDATE Orders SET TotalAmount = 135.25 WHERE OrderID = 102;

DELETE FROM Orders WHERE OrderID = 103;

SELECT * FROM Orders WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

SELECT MAX(TotalAmount) AS HighestOrderAmount, MIN(TotalAmount) AS LowestOrderAmount, AVG(TotalAmount) AS AverageOrderAmount 
FROM Orders;

## table 3: Products ##
CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(100),Price DECIMAL(10, 2),Stock INT);

INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
(1, 'Laptop', 45000.00, 15),
(2, 'Mouse', 750.00, 150),
(3, 'Keyboard', 1250.50, 80),
(4, 'Monitor', 15000.00, 25),
(5, 'Webcam', 450.00, 0);

SELECT * FROM Products;
SELECT * FROM Products ORDER BY Price DESC;

UPDATE Products SET Price = 15500.00 WHERE ProductID = 4;

DELETE FROM Products WHERE Stock = 0;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Products WHERE Price BETWEEN 500.00 AND 2000.00;

SELECT MAX(Price) AS MostExpensivePrice, MIN(Price) AS CheapestPrice FROM Products;

## table 4: OrderDetails ##
CREATE TABLE OrderDetails (OrderDetailID INT PRIMARY KEY, OrderID INT, ProductID INT, Quantity INT, SubTotal DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID), FOREIGN KEY (OrderID) REFERENCES Orders(OrderID));
    
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 101, 1, 2, 1500.00), 
(2, 102, 2, 1, 1250.50),
(3, 103, 3, 1, 45000.00), 
(4, 104, 4, 5, 3750.00), 
(5, 105, 5, 2, 5000.00); 

SELECT * FROM OrderDetails WHERE OrderID = 101;

SELECT SUM(SubTotal) AS TotalRevenue FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalQuantityOrdered FROM OrderDetails GROUP BY ProductID ORDER BY TotalQuantityOrdered DESC
LIMIT 3;

SELECT COUNT(OrderDetailID) AS NumberOfTimesSold FROM OrderDetails WHERE ProductID = 2;
