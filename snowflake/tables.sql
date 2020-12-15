CREATE TABLE CUSTOMERS (
CUS_CUSTOMER_ID      VARCHAR(20),
CUS_LOYALTY_SCORE    NUMBER
);

CREATE TABLE TRANSACTIONS_JSON(
    JSON_DATA VARIANT
);


CREATE OR REPLACE TABLE TRANSACTIONS(
TRA_CUS_CUSTOMER_ID       VARCHAR(20),
TRA_PRD_PRODUCT_ID            VARCHAR(20),
TRA_PRICE                 NUMBER,
TRA_DT_OF_PURCH           TIMESTAMP_NTZ
);

CREATE TABLE PRODUCTS(
PRD_PRODUCT_ID        VARCHAR(20),
PRD_PRODUCT_DESC      VARCHAR(100),
PRD_PRODUCT_CAT       VARCHAR(10)
);