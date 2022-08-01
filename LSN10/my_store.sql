CREATE DATABASE my_store;

CREATE TABLE cities(
	city_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	country VARCHAR(100),
	city VARCHAR(100)
)

CREATE TABLE cutomers(
	cutomers_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	cus_fname VARCHAR(50),
	cus_lname VARCHAR(50),
	cus_phone_number VARCHAR(20),
	cus_addr INT,
	PRIMARY KEY (cutomers_ID),
	FOREIGN KEY (cus_addr) REFERENCES cities(city_ID),
);

CREATE TABLE suppliers(
	supplier_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	sup_name VARCHAR(50),
	sup_phone_number VARCHAR(20),
	PRIMARY KEY (supplier_ID)
);

CREATE TABLE items(
	item_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	price FLOAT(2),
	category VARCHAR(50),
	item_name VARCHAR(100),
	supplier INT, 
	PRIMARY KEY (item_ID),
	FOREIGN KEY (supplier) REFERENCES suppliers(supplier_ID)
);

CREATE TABLE orders(
	order_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	item INT,
	customer INT,
	PRIMARY KEY (order_ID),
	FOREIGN KEY (item) REFERENCES items(item_ID),
	FOREIGN KEY (customer) REFERENCES cutomers(cutomers_ID)
)

INSERT INTO [dbo].[items] (item_name, price, supplier)
VALUES
	('NiceTable', 1580.20,1),
	('Chair', 120.99,2),
	('Sofa', 3000.75,2)
