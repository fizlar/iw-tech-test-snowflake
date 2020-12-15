--IMPROVEMENTS -- CREATE SNOWPIPE INGESTION FOR FILES.
COPY INTO PRODUCTS  FROM '@my_s3_stage/Products/products.csv' FILE_FORMAT= CSV_GENERIC ;
COPY INTO CUSTOMERS FROM '@my_s3_stage/Customers/customers.csv' FILE_FORMAT= CSV_GENERIC ;
COPY INTO PRODUCTS  FROM '@my_s3_stage/Products/products.csv' FILE_FORMAT= CSV_GENERIC ;
COPY INTO TRANSACTIONS_JSON FROM '@my_s3_stage/Transactions/transactions' FILE_FORMAT= myjsonformat ;
  
