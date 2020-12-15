--FLATTEN JSON INTO TABLE
INSERT INTO TRANSACTIONS
SELECT JSON_DATA:customer_id::string,
       basket.value:product_id::string,
       basket.value:price::number,
       JSON_DATA:date_of_purchase::timestamp_ntz as date_of_purchase
FROM TRANSACTIONS_JSON,
     LATERAL FLATTEN (JSON_DATA:basket) as basket;
