/*
this is an initiation the database with first Database (datawarehouse) and the main three
schemas that are divided into Bronze, Silver and Gold.

warning: 
      runing this script will drop the entire 'DataWarehouse' Database ... if Exists.
      and all the data in the database, so you should Proceed with caution..
      and ensure you have the proper backups befor running this scripts.
*/

-- Drop and recreate the Datawarehouse database 
if EXISTS  (select 1 from sys.databases where name= 'DataWarehouse'
Begin 
      -- Alter Database Datawarehouse set single_user with rollback immediate;
      -- Drop database DataWarehouse; 
End; 
Go 
-- Create the DataWarehouse Database 
Create database DataWarehouse 
Go 

-- this turn the contorl to the databse DataWarehouse
use DataWarehouse 
Go 
-- Create Schemas 
create schema bronze;
Go 

Create schema silver;
Go 

create schema gold;
GO 


