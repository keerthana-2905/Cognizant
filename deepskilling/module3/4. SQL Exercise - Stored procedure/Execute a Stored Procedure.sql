-- ==========================================
-- CREATE DATABASE
-- ==========================================

DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- ==========================================
-- CREATE EMPLOYEES TABLE
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
-- CREATE STORED PROCEDURE
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

-- ==========================================
-- EXECUTE STORED PROCEDURE
-- ==========================================

CALL sp_GetEmployeesByDepartment(1);

-- ==========================================
-- EXECUTE FOR ANOTHER DEPARTMENT
-- ==========================================

CALL sp_GetEmployeesByDepartment(2);

-- ==========================================
-- VIEW ALL EMPLOYEES
-- ==========================================

SELECT * FROM Employees;