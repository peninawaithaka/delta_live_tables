--Load the raw customers data into a streaming live table
CREATE STREAMING LIVE TABLE raw_customers
AS 
SELECT 
  * 
FROM cloud_files("/databricks-datasets/retail-org/customers/", "csv");


--Load the raw sales data from the databricks sample data
CREATE STREAMING LIVE TABLE raw_sales
AS 
SELECT 
  customer_id,
  customer_name
FROM cloud_files("/databricks-datasets/retail-org/sales_orders/");
