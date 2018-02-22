DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
	PRIMARY KEY(itemID), 
	itemID INTEGER(5) AUTO_INCREMENT NOT NULL, 
	product_name VARCHAR(50), 
	department_name VARCHAR(100), 
	item_cost FLOAT(10),
	stock_quantity INTEGER(5)
	);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Refrigerator", "Appliances", 997.00, 5);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Electric Range", "Appliances", 439.00, 12);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Toilet", "Bathroom", 178.00, 20);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Pedestal Sink", "Bathroom", 58.00, 15);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Bathtub", "Bathroom", 869.00, 2);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Turkey Frier", "Outdoor", 49.99, 20);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Gas Grill", "Outdoor",269.00, 8);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Gass Grill Cover", "Outdoor", 79.99, 10);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Wheelbarrow", "Garden", 49.98, 13);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Shovel", "Garden", 14.98, 25);

SELECT * FROM products;
