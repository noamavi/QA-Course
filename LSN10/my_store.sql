CREATE DATABASE my_store;

CREATE TABLE items(
	item_ID INT NOT NULL UNIQUE IDENTITY(1,1),
    item_name VARCHAR(20),
    price FLOAT(2),
    supplier FOREIGN KEY, 
    PRIMARY KEY (item_ID)
);

USE [my_store]
GO

INSERT INTO [dbo].[items]
           ([item_name]
           ,[price]
           ,[supplier])
     VALUES
    (NiceTable, 1580.20),
    (Chair, 120.99),
    (Sofa, 3000.75)
GO
