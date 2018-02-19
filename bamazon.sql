DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE Products (
  itemID int NOT NULL,
  productName varchar(50) NOT NULL,
  departmentName varchar(50) NOT NULL,
  price DECIMAL(5,2) NOT NULL,
  stockQuantity int NOT NULL
);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (875160, "Refrigerator", "Appliances", 2397.00, 5);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (673897, "Electric Range", "Appliances", 439.00, 12);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (615477, "Toilet", "Bathroom", 178.00, 20);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (142553, "Pedestal Sink", "Bathroom", 58.00, 15);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (771553, "Bathtub", "Bathroom", 1169.00, 2);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (871322, "Turkey Frier", "Outdoor", 49.99, 20);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (748080, "Gas Grill", "Outdoor",269.00, 8);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (806258, "Gass Grill Cover", "Outdoor", 79.99, 10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (484307, "Wheelbarrow", "Garden", 49.98, 13);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) 
VALUES (229788 , "Shark Kitty Bed", "Garden", 14.98, 25);
