-- Question 1. Achieving 1NF

CREATE TABLE OrderDetails (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(100),
OrderID INT,
    );
    
INSERT INTO OrderDetails (OrderID, CustomerName, OrderDate)values
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Mouse'),
(102, 'Jane Smith', 'Keyboard'),
(103, 'Emily Clark', 'Phone');


-- Question 2. Achieving 2NF
CREATE TABLE CustomerInfo (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO CustomerInfo (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE ProductDetails (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES CustomerInfo(OrderID)
);

INSERT INTO ProductDetails (ProductID, ProductName,Quantity, OrderID) VALUES
(1, 'Laptop', 2, 101),
(2, 'Mouse',1,  101),
(3, 'Tablet',3,  102),
(4, 'Mouse',1,  102),
(5, 'Keyboard',2 ,  102),
(6, 'Phone',1 , 103);
