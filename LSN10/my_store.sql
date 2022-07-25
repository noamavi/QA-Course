CREATE DATABASE my_store;

CREATE TABLE items(
	item_ID INT NOT NULL UNIQUE IDENTITY(1,1),
	item_name VARCHAR(20),
	price FLOAT(2),
	supplier INT, 
	PRIMARY KEY (item_ID)
);

INSERT INTO [dbo].[items] (item_name, price, supplier)
VALUES
	('NiceTable', 1580.20,1),
	('Chair', 120.99,2),
	('Sofa', 3000.75,2)
