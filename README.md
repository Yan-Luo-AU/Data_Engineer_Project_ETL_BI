# Data Engineer Project - Syn transactional data to data warehouse for BI
- Create MySQL database instance on RDS as transactional database
  - Connect DB client DBeaver to the transactional database on RDS
  - Create tables and load data using DBeaver
  - Data source: https://www.kaggle.com/olistbr/brazilian-ecommerce
- Data Modelling: design data schema for Data Warehouse
- Create a Data Warehouse in Redshift, and connect it to DBeaver
- AWS DataPipeline: one-time load historical data into Redshift tables using copy command
- AWS Glue: incremental data loads into Redshift
  - use AWS Secret Managers to store credentials
  - create a schema for staging tables in Redshift, and create staging tables
  - copy current data from S3 and store into a staging table
  - delete from the main table in the Data Warehouse using the staging tables
  - insert into the main table in the Data Warehouse by selecting everything from the staging table, and truncate the staging table at the end of this process.
  
