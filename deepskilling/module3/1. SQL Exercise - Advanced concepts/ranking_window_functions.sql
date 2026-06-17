-- Create Database
CREATE DATABASE IF NOT EXISTS EcommerceDB;


USE EcommerceDB;


-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO Products VALUES
(1,'Laptop A','Electronics',80000),
(2,'Laptop B','Electronics',75000),
(3,'Laptop C','Electronics',75000),
(4,'Mobile A','Electronics',50000),
(5,'Shirt A','Fashion',2000),
(6,'Shirt B','Fashion',2500),
(7,'Shirt C','Fashion',2500),
(8,'Jeans A','Fashion',3000),
(9,'Sofa A','Furniture',45000),
(10,'Sofa B','Furniture',40000),
(11,'Chair A','Furniture',40000),
(12,'Table A','Furniture',35000);

-- ROW_NUMBER()
SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER(
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Row_Num
FROM Products;

-- Top 3 Most Expensive Products Per Category using ROW_NUMBER
SELECT *
FROM (
    SELECT
        ProductID,
        ProductName,
        Category,
        Price,
        ROW_NUMBER() OVER(
            PARTITION BY Category
            ORDER BY Price DESC
        ) AS Row_Num
    FROM Products
) RankedProducts
WHERE Row_Num <= 3;

-- RANK()
SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    RANK() OVER(
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Product_Rank
FROM Products;

-- DENSE_RANK()
SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    DENSE_RANK() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS DenseRank
FROM Products;

-- Comparison of ROW_NUMBER, RANK and DENSE_RANK
SELECT
    ProductID,
    ProductName,
    Category,
    Price,

    ROW_NUMBER() OVER(
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Row_Num,

    RANK() OVER(
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Rank_Num,

    DENSE_RANK() OVER(
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Dense_Rank_Num

FROM Products;