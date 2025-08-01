/*
================================================================================
 Script Name   : init_database.sql
 Description   : Initializes the SQL Data Warehouse by creating the main database
                 and essential schema layers for the ELT pipeline architecture.
 
 Schemas Created:
   - bronze : Raw or ingested data layer
   - silver : Cleaned, transformed data layer
   - gold   : Aggregated, business-ready data layer

 Author        : [Gaurav Gupta]


 WARNING:
   - This script should be executed with appropriate permissions (e.g., sysadmin).
   - Running this script will attempt to create a new database named 'DataWarehouse'.
   - Ensure the 'DataWarehouse' database does not already exist before running.
================================================================================
*/

-- Switch context to the 'master' database before creating a new database
USE master;
GO

-- Create the main Data Warehouse database
CREATE DATABASE DataWarehouse;
GO

-- Switch context to the newly created DataWarehouse
USE DataWarehouse;
GO

-- Create the 'bronze' schema for raw/staging data ingestion
CREATE SCHEMA bronze;
GO

-- Create the 'silver' schema for cleaned and transformed data
CREATE SCHEMA silver;
GO

-- Create the 'gold' schema for final business-ready analytics and reporting
CREATE SCHEMA gold;
GO
