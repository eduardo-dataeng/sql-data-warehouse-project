-- =============================================
-- Create Data Warehouse Database and Schemas
-- Author: Eduardo Duarte
-- Description: Initializes the database and 
--              creates the Bronze, Silver, and Gold schemas
-- =============================================

-- Switch to the master database
USE master;
GO

-- Create the Data Warehouse database
CREATE DATABASE DataWarehouseProject;
GO

-- Switch to the new database
USE DataWarehouseProject;
GO

-- Create schemas for the Medallion Architecture
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
