--Task
-- Source data from the databricks cloud file
--Create a DLT pipeline

--Task 1
--Loading raw customers data into a streaming table
CREATE STREAMING LIVE TABLE customers
AS 
SELECT 
  * 
FROM cloud_files("/databricks-datasets/retail-org/customers/", "csv");