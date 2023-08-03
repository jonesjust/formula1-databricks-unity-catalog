-- Databricks notebook source
CREATE EXTERNAL LOCATION IF NOT EXISTS databricksucadlsext_bronze
  URL 'abfss://bronze@databricksucadlsext.dfs.core.windows.net/'
  WITH (STORAGE CREDENTIAL databricks_storage_credential_ext);

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databricksucadlsext_silver
  URL 'abfss://silver@databricksucadlsext.dfs.core.windows.net/'
  WITH (STORAGE CREDENTIAL databricks_storage_credential_ext);

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databricksucadlsext_gold
  URL 'abfss://gold@databricksucadlsext.dfs.core.windows.net/'
  WITH (STORAGE CREDENTIAL databricks_storage_credential_ext);
