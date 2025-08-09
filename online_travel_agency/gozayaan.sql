--  create table

CREATE DATABASE Gozayaan;
USE Gozayaan;

CREATE TABLE IF NOT EXISTS Customer (
C_ID INT PRIMARY KEY,
Name VARCHAR(100),
Email Varchar(150) UNIQUE KEY,
Phone Varchar(20)
);

CREATE TABLE IF NOT EXISTS Vendors (
V_ID INT PRIMARY KEY,
Vendor_name VARCHAR(200),
Type VARCHAR(250),
Contact VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Promotion (
P_ID INT PRIMARY KEY,
Promo_status VARCHAR(200),
Discount VARCHAR(10),
Start_date DATE,
End_date DATE
);

CREATE TABLE IF NOT EXISTS Booking (
B_ID INT PRIMARY KEY,          
C_ID INT,                   
V_ID INT,                      
P_ID INT,                      
Booking_date DATE,             
Status VARCHAR(50), 
FOREIGN KEY (C_ID) REFERENCES Customer(C_ID),
FOREIGN KEY (V_ID) REFERENCES Vendors(V_ID),
FOREIGN KEY (P_ID) REFERENCES Promotion(P_ID)   
);

CREATE TABLE IF NOT EXISTS Review (
R_ID INT PRIMARY KEY,
C_ID INT,
B_ID INT,
Rating INT,
FOREIGN KEY (C_ID) REFERENCES Customer(C_ID),
FOREIGN KEY (B_ID) REFERENCES Booking(B_ID)
);
 
 CREATE TABLE IF NOT EXISTS Payment (
Pay_ID INT PRIMARY KEY,
B_ID INT,
Payment_date DATE,
Amount DECIMAL(10, 2),
Pay_status VARCHAR(50),
Payment_method VARCHAR(50),
FOREIGN KEY (B_ID) REFERENCES Booking(B_ID)
);

-- insert data

-- customer
INSERT INTO Customer (C_ID, Name, Email, Phone)
 VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '123-456-7890'),
(2, 'Bob Smith', 'bob.smith@example.com', '234-567-8901'),
(3, 'Carol White', 'carol.white@example.com', '345-678-9012'),
(4, 'David Lee', 'david.lee@example.com', '456-789-0123'),
(5, 'Eva Green', 'eva.green@example.com', '567-890-1234');

-- vendors
INSERT INTO Vendors (V_ID, Vendor_name, Type, Contact) 
VALUES
(1, 'City Airlines', 'Airline Service', '555-1234'),
(2, 'Mountain Tours', 'Tour Operator', '555-5678'),
(3, 'Ocean Cruises', 'Cruise Service', '555-8765'),
(4, 'Desert Safari', 'Adventure Tour', '555-4321'),
(5, 'Skyline Helicopters', 'Helicopter Rides', '555-9876');

-- promotion
INSERT INTO Promotion (P_ID, Promo_status, Discount, Start_date, End_date) 
VALUES
(1, 'Active', '20%', '2025-01-01', '2025-12-31'),
(2, 'Expired', '10%', '2024-01-01', '2024-12-31'),
(3, 'Active', '15%', '2025-03-01', '2025-06-30'),
(4, 'Active', '25%', '2025-05-15', '2025-07-15'),
(5, 'Upcoming', '30%', '2025-09-01', '2025-11-30');

--  booking
INSERT INTO Booking (B_ID, C_ID, V_ID, P_ID, Booking_date, Status) 
VALUES
(1, 1, 1, 1, '2025-08-01', 'Confirmed'),
(2, 2, 2, NULL, '2025-08-05', 'Cancelled'),
(3, 3, 3, 3, '2025-06-20', 'Confirmed'),
(4, 4, 4, 4, '2025-07-10', 'Pending'),
(5, 5, 5, 5, '2025-09-05', 'Confirmed');

-- review
INSERT INTO Review (R_ID, C_ID, B_ID, Rating) 
VALUES
(1, 1, 1, 5),
(2, 2, 2, 3),
(3, 3, 3, 4),
(4, 4, 4, 2),
(5, 5, 5, 5);

--  payment
INSERT INTO Payment (Pay_ID, B_ID, Payment_date, Amount, Pay_status, Payment_method) VALUES
(1, 1, '2025-08-01', 50000.00, 'Paid', 'Credit Card'),
(2, 2, '2025-08-05', 750000.00, 'Refunded', 'Cash'),
(3, 3, '2025-06-20', 120000.00, 'Paid', 'Debit Card'),
(4, 4, '2025-07-10', 20000.00, 'Pending', 'Online Transfer'),
(5, 5, '2025-09-05', 3000000.00, 'Paid', 'Credit Card');
