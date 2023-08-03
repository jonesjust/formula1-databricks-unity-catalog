-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create Catalogs and Schemas
-- MAGIC 1. Catalog - formula1_dev (Without managed location)
-- MAGIC 2. Schemas - bronze, silver and gold (With managed location)

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS formula1_dev;

-- COMMAND ----------

USE CATALOG formula1_dev;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION 'abfss://bronze@databricksucadlsext.dfs.core.windows.net/';

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION 'abfss://silver@databricksucadlsext.dfs.core.windows.net/';

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION 'abfss://gold@databricksucadlsext.dfs.core.windows.net/';
