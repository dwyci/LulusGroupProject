drop DATABASE lulus;
drop table foods;
create database lulus;

create table foods (
	FoodId int NOT NULL AUTO_INCREMENT,
    FoodName varchar(60),
    Price DECIMAL(7,2),
    Category varchar(60),
     PRIMARY KEY (FoodID)
    );
  
  INSERT INTO foods(FoodName, Price, Category)
VALUES('Buffalo Cauliflower Bites', 5.95, 'Starter'),
('Kale Salad', 6.95, 'Starter'),
('Tater Tots', 3.95, 'Starter'),
('Smoked White Bean Hummus', 6.95, 'Starter'),
('Thai Crunch Salad', 8.95, 'Starter'),
('Poke Lettuce Wraps', 9.95, 'Starter'),
('BBQ Jack Tacos', 7.95, 'Burger'),
('Sweet Potato Falafel', 6.95, 'Burger'),
('Sweet Potato Black Bean Burger', 6.95, 'Burger'),
('Buffalo Blue Burger', 6.95, 'Burger'),
('Buffalo Cauliflower Wrap', 7.95, 'Burger'),
('Portabello Gyro', 8.95, 'Burger'),
('Thai Crunch Wrap', 8.95, 'Burger'),
('Kimchi Crunch Wrap', 9.95, 'Burger'),
('Lulus Tacos', 7.95, 'Tacos'),
('Banh Mi Tacos', 7.95, 'Tacos'),
('Bahn Mi Burrito', 8.95, 'Tacos'),
('Chipotle Black Bean Burrito', 8.95, 'Tacos'),
('Spring Roll Burrito', 8.95, 'Tacos'),
('Buddha Bowl', 9.95, 'Bowl'),
('Banh Mi Bowl', 9.95, 'Bowl'),
('Spring Roll Bowl', 9.95, 'Bowl'),
('Chipotle Black Bean Bowl', 9.95, 'Bowl'),
('Sushi Bowl', 9.95, 'Bowl'),
('Cauliflower Nuggets', 4.95, 'Kids'),
('Kids Taco', 2.95, 'Kids'),
('Mini Burger', 3.95, 'Kids'),
('BBQ Slider', 3.95, 'Kids');

CREATE TABLE customer (
    CustomerID int NOT NULL AUTO_INCREMENT,
    Fname varchar(60),
    Lname varchar(60),
    Phone varchar(60),
    Email varchar(60),
    CCnumber varchar(60),
	PRIMARY KEY (CustomerID)
    );
  
INSERT INTO customer(Fname, Lname, Phone, Email, CCnumber)
VALUES ('Dallas', 'Wyciskalla', 3145551212,'d@system.com', 1234123412341234),
('Ben', 'Hogan', 2175551212,'ben@system.com', 1234123412341234);
    
CREATE TABLE invoice (
    InvoiceID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    InvoiceDate timestamp,
    FoodReady datetime  -- when the customer schedules a pick up --   
    );    
    
   CREATE TABLE food_list (
    InvoiceID int references invoice(InvoiceID),
    FoodID int references foods(FoodID),
    CustomerID int references customer(CustomerID),
    Quantity int
    ); 

select *
from foods;




 




