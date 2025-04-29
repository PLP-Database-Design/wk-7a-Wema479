Question 1
use  test1;

create table ProductDetails (
OrderID INT PRIMARY KEY,
    CustomerName  varchar(100),
    OrderDate DATE);
    
INSERT INTO ProductDetails (OrderID, CustomerName, OrderDate) 
SELECT OrderID, CustomerName, OrderDate FROM ProductDetails;

insert into ProductDetails (OrderId, CustomerName, OrderDate)
values 
(101, 'John', '2025-01-04'),
(102, 'Jane Smith', '2025-03-18'),
(103, 'Emily Clark', '2025-02-14')
;

CREATE TABLE OrderDetail (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    OrderDate DATE
);

CREATE TABLE OrderProducts (
    OrderID INT,
    ProductID INT,
    ProductName VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES OrderDetail(OrderID)
    
);

-- Insert data into the new tables.  
INSERT INTO OrdersDetail (OrderID, CustomerName, OrderDate) 
SELECT OrderID, CustomerName, OrderDate FROM OrderDetail;

insert into OrderDetail (OrderId, CustomerName, OrderDate)
values 
(101, 'John', '2025-01-04'),
(102, 'Jane Smith', '2025-03-18'),
(103, 'Emily Clark', '2025-02-14')
;

INSERT INTO OrderProducts (OrderID,ProductID, ProductName, Quantity) 
SELECT OrderID, ProductID,ProductName, Quantity FROM OrderProducts;

insert into OrderProducts (OrderId, ProductID, ProductName, Quantity)
values 
(101, '2311', 'laptop', '1'),
(101, '2310', 'mouse', '1'),
(102, '2350', 'tablet', '2'),
(102, '2310', 'mouse', '1'),
(102, '2316', 'keyboard', '1'),
(103, '1279', 'phone', '1')
;

-- The above SQL code creates two tables: ProductDetails and OrderDetail.
-- The ProductDetails table contains information about orders, including OrderID, CustomerName, and OrderDate.

-- The OrderDetail table contains information about products, including OrderID, ProductID, ProductName, and Quantity.
-- The code also inserts sample data into both tables.

Question 2
CREATE TABLE CustomerInfo (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

INSERT INTO CustomerInfo (CustomerID, CustomerName) 
SELECT DISTINCT CustomerID, CustomerName FROM customerInfo;

ALTER TABLE customerinfo
DROP COLUMN CustomerName;

ALTER TABLE customers
ADD COLUMN CustomerID INT,
ADD CONSTRAINT FK_Orders_Customers 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

UPDATE customers
SET CustomerID = (SELECT CustomerID FROM Customers 
WHERE Customers.CustomerName = 'Original CustomerName');


