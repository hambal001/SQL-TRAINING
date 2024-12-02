CREATE SCHEMA HumanResources;
CREATE SCHEMA Customer;
CREATE SCHEMA Sales;
CREATE SCHEMA Inventory;
DROP TABLE Depts;


---HumanResources.Departments Table
CREATE TABLE Depts (
    department_id SERIAL PRIMARY KEY,
    Department_name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Depts (Department_name) VALUES
('Sales'),
('Marketing'),
('Human Resources'),
('Finance'),
('IT'),
('Customer Service'),
('Research and Development'),
('Operations'),
('Legal'),
('Procurement'),
('Logistics'),
('Public Relations'),
('Training'),
('Quality Assurance'),
('Administration'),
('Business Development'),
('Engineering'),
('Design'),
('Product Management'),
('Data Analytics');


---HumanResorces.StaffDetails Table
CREATE TABLE StaffDetails (
    staff_id SERIAL PRIMARY KEY,
	Title VARCHAR (50) NOT NUll,
    FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	Gender CHAR (6) NOT NULL,
	Age INT NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
	Phone_Number INT NOT NULL,
	HireDate DATE NOt NULL,
	Salary NUMERIC (15,2) NOT NULL,
	State_of_Origin VARCHAR (50) NOT NULL,
    department_id INT REFERENCES Depts(department_id)
);
 
INSERT INTO StaffDetails (
    Title, FirstName, LastName, Gender, Age, Email, Phone_Number, HireDate, Salary,State_of_Origin, department_id
) VALUES
-- Male Staff
('Mr.', 'John', 'Smith', 'Male', 30, 'john.smith@gmail.com', 1234567890, '2020-01-15',2500.33,'Kensas', 1),
('Mr.', 'David', 'Johnson', 'Male', 40, 'david.johnson@yahoo.com', 1234567891, '2018-06-22',3000.00, 'Denvers', 2),
('Mr.', 'Michael', 'Williams', 'Male', 35, 'michael.yahoo.com', 1234567892, '2021-03-10',4500.90,'Washington DC', 3),
('Dr.', 'James', 'Brown', 'Male', 45, 'james.brown@yahoo.com', 1234567893, '2019-12-01',5000.00,'NewYork', 4),
('Mr.', 'Robert', 'Garcia', 'Male', 50, 'robert.garcia@gmail.com', 1234567894, '2017-07-19',6000.66,'Florida', 5),
('Ms.', 'Emily', 'Davis', 'Female', 28, 'emily.davis@gmail.com', 1234567895, '2020-09-01',6000.00,'Chicago', 1),
('Mrs.', 'Jessica', 'Martinez', 'Female', 32, 'jessica.martinez@yahoo.com', 1234567896, '2016-11-15',5000.10,'Indiana', 2),
('Dr.', 'Sarah', 'Hernandez', 'Female', 40, 'sarah.hernandez@gmail.com', 1234567897, '2021-05-30',9000.00, 'Abuja', 3),
('Ms.', 'Laura', 'Lopez', 'Female', 29, 'laura.lopez@gmail.com', 1234567898, '2018-10-10',8500.00, 'Lagos', 4),
('Mrs.', 'Sophia', 'Gonzalez', 'Female', 36, 'sophia.gonzalez@yahoo.com', 1234567899, '2019-02-20', 3000.90,'Kaduna',5),
('Mr.', 'Daniel', 'Miller', 'Male', 42, 'daniel.miller@yahoo.com', 1234567800, '2017-03-15', 7500.90,'Kano', 1),
('Ms.', 'Olivia', 'Rodriguez', 'Female', 33, 'olivia.rodriguez@gmail.com', 1234567801, '2022-01-11',6500.80,'NewYork', 2),
('Mr.', 'William', 'Wilson', 'Male', 31, 'william.wilson@gmail.com', 1234567802, '2020-06-14',8000.00,'Abuja', 3),
('Mrs.', 'Emma', 'Anderson', 'Female', 37, 'emma.anderson@yahoo.com', 1234567803, '2018-09-05',3500.00,'Kaduna', 4),
('Ms.', 'Isabella', 'Thomas', 'Female', 27, 'isabella.thomas@gmail.com', 1234567804, '2021-12-22',4500.00,'Florida', 5),
('Dr.', 'Christopher', 'Moore', 'Male', 48, 'christopher.moore@yahoo.com', 1234567805, '2016-04-25',3500.00,'Kensas', 1),
('Ms.', 'Mia', 'Taylor', 'Female', 29, 'mia.taylor@gmail.com', 1234567806, '2017-08-09',2500.00,'Denvers', 2),
('Mr.', 'Alexander', 'White', 'Male', 34, 'alexander.white@gmail.com', 1234567807, '2020-03-18',5000.00,'Abuja', 3),
('Mrs.', 'Ava', 'Harris', 'Female', 38, 'ava.harris@gmail.com', 1234567808, '2019-11-06',6500.90,'Kaduna', 4),
('Ms.', 'Charlotte', 'Clark', 'Female', 26, 'charlotte.clark@yahoo.com', 1234567809, '2022-07-28', 7500.89,'Kano', 5);

---Customer.CustomerDetails
CREATE TABLE CustomerDetails (
    Customer_id SERIAL PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL, 
	LastName VARCHAR(100) NOT NULL,
	Phone_Num BIGINT NOT NULL,
	Address VARCHAR (200) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
	City VARCHAR (50)
);

SELECT *FROM Customer.CustomerDetails

INSERT INTO CustomerDetails (
    FirstName, LastName, Phone_Num, Address, Email, City
) VALUES
('John', 'Doe', 9876543210, '123 Elm Street, Springfield', 'john.doe@gmail.com','London'),
('Jane', 'Smith', 9876543211, '456 Oak Avenue, Shelbyville', 'jane.smith@yahoo.com','Hamshire'),
('Michael', 'Johnson', 9876543212, '789 Maple Lane, Centerville', 'michael.johnson@gmail.com','Bolton'),
('Emily', 'Brown', 9876543213, '101 Pine Road, Riverdale', 'emily.brown@yahoo.com','Stanford'),
('Chris', 'Davis', 9876543214, '202 Cedar Street, Laketown', 'chris.davis@yahoo.com','Kawo'),
('Jessica', 'Miller', 9876543215, '303 Birch Avenue, Hillcrest', 'jessica.miller@yahoo.com','Malali'),
('Matthew', 'Wilson', 9876543216, '404 Ash Boulevard, Brookfield', 'matthew.wilson@gmail.com','Rimi'),
('Laura', 'Moore', 9876543217, '505 Willow Drive, Rockford', 'laura.moore@gmail.com','Sabo'),
('David', 'Taylor', 9876543218, '606 Fir Court, Greenfield', 'david.taylor@yahoo.com','Zaria'),
('Sophia', 'Anderson', 9876543219, '707 Spruce Place, Fairfield', 'sophia.anderson@gmail.com','Zaria'),
('Daniel', 'Thomas', 9876543220, '808 Poplar Lane, Clearwater', 'daniel.thomas@yahoo.com','Sabo'),
('Olivia', 'Martin', 9876543221, '909 Cypress Street, Ashland', 'olivia.martin@gmail.com','London'),
('James', 'Garcia', 9876543222, '111 Alder Circle, Pleasantville', 'james.garcia@yahoo.com','London'),
('Isabella', 'Martinez', 9876543223, '222 Magnolia Drive, Sunnyvale', 'isabella.martinez@yahoo.com','Zaria'),
('Robert', 'Rodriguez', 9876543224, '333 Chestnut Road, Greenville', 'robert.rodriguez@gmail.com','Kawo'),
('Mia', 'Hernandez', 9876543225, '444 Redwood Boulevard, Springdale', 'mia.hernandez@yahoo.com','Dosa'),
('William', 'Clark', 9876543226, '555 Sequoia Lane, Maplewood', 'william.clark@yahoo.com','Mando'),
('Charlotte', 'Lewis', 9876543227, '666 Dogwood Avenue, Forest Hill', 'charlotte.lewis@gmail.com','Barnawa'),
('Alexander', 'Walker', 9876543228, '777 Hickory Court, Meadowbrook', 'alexander.walker@gmail.com','Kawo'),
('Ava', 'Hall', 9876543229, '888 Juniper Street, Ridgeview', 'ava.hall@yahoo.com','Dosa');

---Sales.Transactions
CREATE TABLE Transactions (
    transaction_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES CustomerDetails(customer_id),
    transaction_date DATE NOT NULL,
    total_amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO Transactions (
    customer_id, transaction_date, total_amount
) VALUES
(1, '2024-11-01', 150.75),
(2, '2024-11-02', 200.00),
(3, '2024-11-03', 50.25),
(4, '2024-11-04', 300.99),
(5, '2024-11-05', 400.50),
(6, '2024-11-06', 125.60),
(7, '2024-11-07', 600.40),
(8, '2024-11-08', 80.00),
(9, '2024-11-09', 220.30),
(10, '2024-11-10', 175.00),
(11, '2024-11-11', 550.75),
(12, '2024-11-12', 430.20),
(13, '2024-11-13', 90.00),
(14, '2024-11-14', 300.15),
(15, '2024-11-15', 250.10),
(16, '2024-11-16', 410.50),
(17, '2024-11-17', 120.75),
(18, '2024-11-18', 610.00),
(19, '2024-11-19', 330.45),
(20, '2024-11-20', 700.00);

---Sales.PaymentDetails
CREATE TABLE PaymentDetails (
    payment_id SERIAL PRIMARY KEY,
    transaction_id INT REFERENCES Transactions(transaction_id),
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    amount_paid NUMERIC(10, 2) NOT NULL
);


INSERT INTO PaymentDetails (
    transaction_id, payment_date, payment_method, amount_paid
) VALUES
(1, '2024-11-01', 'Credit Card', 150.75),
(2, '2024-11-02', 'Debit Card', 200.00),
(3, '2024-11-03', 'Cash', 50.25),
(4, '2024-11-04', 'Online Transfer', 300.99),
(5, '2024-11-05', 'Credit Card', 400.50),
(6, '2024-11-06', 'Cash', 125.60),
(7, '2024-11-07', 'Online Transfer', 600.40),
(8, '2024-11-08', 'Debit Card', 80.00),
(9, '2024-11-09', 'Cash', 220.30),
(10, '2024-11-10', 'Credit Card', 175.00),
(11, '2024-11-11', 'Online Transfer', 550.75),
(12, '2024-11-12', 'Debit Card', 430.20),
(13, '2024-11-13', 'Cash', 90.00),
(14, '2024-11-14', 'Credit Card', 300.15),
(15, '2024-11-15', 'Online Transfer', 250.10),
(16, '2024-11-16', 'Debit Card', 410.50),
(17, '2024-11-17', 'Cash', 120.75),
(18, '2024-11-18', 'Online Transfer', 610.00),
(19, '2024-11-19', 'Credit Card', 330.45),
(20, '2024-11-20', 'Debit Card', 700.00);



---Sales.ProductsDetails
CREATE TABLE ProductDetails (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    transaction_id INT REFERENCES Transactions(transaction_id),
    quantity_sold INT NOT NULL
);


INSERT INTO ProductDetails (
    product_name, price, transaction_id, quantity_sold
) VALUES
('Laptop', 1200.50, 1, 1),
('Wireless Mouse', 25.75, 2, 2),
('Smartphone', 800.99, 3, 1),
('Headphones', 50.25, 4, 2),
('Tablet', 400.50, 5, 1),
('Smartwatch', 199.99, 6, 1),
('External Hard Drive', 75.60, 7, 3),
('Keyboard', 45.00, 8, 1),
('Gaming Console', 500.00, 9, 1),
('Monitor', 150.00, 10, 2),
('Desk Chair', 120.75, 11, 1),
('Standing Desk', 300.00, 12, 1),
('Printer', 90.50, 13, 1),
('USB Cable', 10.00, 14, 5),
('Webcam', 60.00, 15, 1),
('Fitness Tracker', 75.00, 16, 2),
('Smart TV', 550.75, 17, 1),
('Bluetooth Speaker', 120.00, 18, 2),
('Router', 50.00, 19, 3),
('Power Bank', 25.00, 20, 4);


SELECT *FROM Depts
SELECT *FROM StaffDetails
SELECT *FROM CustomerDetails
SELECT *FROM PaymentDetails
SELECT *FROM Transactions
SELECT *FROM ProductsDetails 


