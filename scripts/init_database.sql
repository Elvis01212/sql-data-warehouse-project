/*
====================================================================
Create Database and Schemas
====================================================================
Script Purpose:
  This scripts creates a new database 'DataWareHouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'

Warning:
    Running this scripts will drop the entire 'DatabaseWareHouse' Database if it exists.
    All data in the databse will permanently be deleted. Proceed with caustion 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'DataWareHouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DatabaseWareHouse')
BEGIN
    ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWareHouse;
END;
GO

--Create the 'DatabaseWareHouse' Database
CREATE DATABASE DataWareHouse;
GO
  
USE DataWareHouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
