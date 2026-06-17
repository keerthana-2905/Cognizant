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
('David', 'Brown', 3, 65000.00, '2020-07-01'),
('Emma', 'Davis', 1, 58000.00, '2023-08-15');

-- ==========================================
-- CREATE STORED PROCEDURE
-- RETURNS TOTAL EMPLOYEES IN A DEPARTMENT
-- ==========================================

DELIMITER $$

CREATE PROCEDURE sp_GetEmployeeCountByDepartment(
    IN p_DepartmentID INT
)
BEGIN
    SELECT
        DepartmentID,
        COUNT(*) AS TotalEmployees
    FROM Employees
    WHERE DepartmentID = p_DepartmentID
    GROUP BY DepartmentID;
END $$

DELIMITER ;

-- ==========================================
-- EXECUTE STORED PROCEDURE
-- ==========================================

CALL sp_GetEmployeeCountByDepartment(1);

CALL sp_GetEmployeeCountByDepartment(2);

CALL sp_GetEmployeeCountByDepartment(3);

-- ==========================================
-- VERIFY DATA
-- ==========================================

SELECT * FROM Employees;