/*
====================================================================
Create Database and Schemas
====================================================================
Script Purpose:
  This scripts creates a new database 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'

Warning:
    Running this scripts will drop the entire 'DatabaseWarehouse' Database if it exists.
    All data in the databse will permanently be deleted. Proceed with caustion 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DatabaseWareHouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWareHouse;
END;
GO

--Create the 'DatabaseWarehouse' Database
CREATE DATABASE DataWareHouse;
GO
  
USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
