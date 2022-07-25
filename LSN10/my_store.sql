CREATE DATABASE my_store;

CREATE TABLE items(
	item_ID INT NOT NULL IDENTITY(1,1),
    item_name VARCHAR(50),
    price FLOAT(2),
    PRIMARY KEY (item_ID)
);