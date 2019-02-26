CREATE DATABASE Lulus;

CREATE TABLE Customers
(CustomerID INT Primary Key Identity,
Email varchar(50) NOT NULL,
PhoneNum INT  NOT NULL,
Fname varchar(50) NOT NULL,
Lname varchar(50) NOT NULL,
PaymentID INT NOT NULL,
FoodID INT NOT NULL);

INSERT INTO Customers
VALUES ('dallas@dw.com', 3143143145, 'Dallas', 'Wyciskalla',1,1);

