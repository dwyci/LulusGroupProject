CREATE DATABASE lulus;

CREATE TABLE invoice (
    InvoiceID int not null PRIMARY KEY,
    Food varchar(60),
    Price int,
    Quantity int
	);

CREATE TABLE customer (
    CustomerID int PRIMARY KEY,
    Fname varchar(60),
    Lname varchar(60),
    Phone varchar(60),
    Email varchar(60),
    CCnumber varchar(60)	
);

ALTER TABLE customer
ADD InvoiceID int;

ALTER TABLE customer
ADD FOREIGN KEY (InvoiceID) REFERENCES invoice(InvoiceID);

INSERT INTO customer
VALUES (1, 'Dallas', 'Wyciskalla', 3145551212, 
'd@system.com', 1234123412341234, 1);

INSERT INTO invoice
VALUES (1, 'Loaded Nacho Tots', '6.95', 1 );


