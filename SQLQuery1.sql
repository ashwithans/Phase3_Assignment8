CREATE DATABASE EXERCISE8DB
USE EXERCISE8DB

CREATE TABLE Products (
    PId VARCHAR(5) PRIMARY KEY CHECK (PId LIKE 'P[0-9][0-9][0-9][0-9]'),
    PName NVARCHAR(100) NOT NULL,
    PPrice DECIMAL(10, 2) NOT NULL,
    MnfDate DATE NOT NULL,
    ExpDate DATE NOT NULL
)

INSERT INTO Products (PId, PName, PPrice, MnfDate, ExpDate)
VALUES
    ('P0001', 'Product 1', 15.99, '2023-01-15', '2024-01-15'),
    ('P0002', 'Product 2', 25.49, '2022-05-20', '2024-05-20'),
    ('P0003', 'Product 3', 9.99, '2023-03-10', '2024-03-10'),
    ('P0004', 'Product 4', 34.99, '2022-11-18', '2024-11-18'),
    ('P0005', 'Product 5', 49.99, '2023-07-05', '2024-07-05'),
    ('P0006', 'Product 6', 19.99, '2022-09-30', '2024-09-30'),
    ('P0007', 'Product 7', 29.99, '2023-02-25', '2024-02-25'),
    ('P0008', 'Product 8', 39.99, '2022-08-12', '2024-08-12'),
    ('P0009', 'Product 9', 10.99, '2023-06-08', '2024-06-08'),
    ('P0010', 'Product 10', 59.99, '2022-12-28', '2024-12-28');
	SELECT * FROM Products