CREATE DATABASE lulus;

CREATE TABLE invoice (
    InvoiceID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Food varchar(60),
    Price DECIMAL(7,2),
    Quantity int,
    CustomerID int, 
    FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)
    );

CREATE TABLE customer (
    CustomerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Fname varchar(60),
    Lname varchar(60),
    Phone varchar(60),
    Email varchar(60),
    CCnumber varchar(60)	
);

INSERT INTO customer
VALUES (1,'Dallas', 'Wyciskalla', 3145551212, 
'd@system.com', 1234123412341234);

INSERT INTO invoice
VALUES (1,'Loaded Nacho Tots', 6.95, 1, 1);


SELECT * FROM customer;
SELECT * FROM invoice;

