-- ==========================================
-- CREATE DATABASE
-- ==========================================

DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- ==========================================
-- CREATE TABLE
-- ==========================================

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE
);

-- ==========================================
-- INSERT SAMPLE DATA
-- ==========================================

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, JoinDate)
VALUES
('John', 'Smith', 1, 50000.00, '2022-01-15'),
('Alice', 'Johnson', 2, 60000.00, '2021-05-20'),
('Bob', 'Williams', 1, 55000.00, '2023-03-10'),
('David', 'Brown', 3, 65000.00, '2020-07-01');

-- ==========================================
-- EXERCISE 1
-- STORED PROCEDURE TO RETRIEVE EMPLOYEES
-- BY DEPARTMENT
-- ==========================================

DELIMITER $$

CREATE PROCEDURE sp_GetEmployeesByDepartment(
    IN p_DepartmentID INT
)
BEGIN
    SELECT *
    FROM Employees
    WHERE DepartmentID = p_DepartmentID;
END $$

DELIMITER ;

-- Execute Procedure
CALL sp_GetEmployeesByDepartment(1);

-- ==========================================
-- EXERCISE 2
-- STORED PROCEDURE TO INSERT EMPLOYEE
-- ==========================================

DELIMITER $$

CREATE PROCEDURE sp_InsertEmployee(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_DepartmentID INT,
    IN p_Salary DECIMAL(10,2),
    IN p_JoinDate DATE
)
BEGIN
    INSERT INTO Employees
    (
        FirstName,
        LastName,
        DepartmentID,
        Salary,
        JoinDate
    )
    VALUES
    (
        p_FirstName,
        p_LastName,
        p_DepartmentID,
        p_Salary,
        p_JoinDate
    );
END $$

DELIMITER ;

-- Execute Procedure
CALL sp_InsertEmployee(
    'Michael',
    'Taylor',
    2,
    70000.00,
    '2024-01-10'
);

-- ==========================================
-- VERIFY DATA
-- ==========================================

SELECT * FROM Employees;