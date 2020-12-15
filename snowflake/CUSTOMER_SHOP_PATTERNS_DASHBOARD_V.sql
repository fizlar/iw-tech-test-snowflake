--CREATE VIEW
--THIS VIEW NEED A DATE (POSSIBLY EVEN PERIODS DEFINED) AS HOW CAN THE DATA SCIENCE TEAM DO TIME SERIES ANALYSIS 
--MIGHT ALSO WANT TO KEEP A ROLLING 2 YEAR PERIOD 
--MIGHT ALSO CREATE VIEWS PER PERIOD (E.G. YEAR ON YEAR)
--THEY MAY USE OWN CALENDAR E.G (SEASONS, QTR WHICH ARE NOT STARDARD I.E. YEAR 2020 = 29/12/2019 - 28/12/2020)
CREATE VIEW CUSTOMER_SHOP_PATTERNS_DASHBOARD_V
AS
SELECT CUS_CUSTOMER_ID AS CUSTOMER_ID,
       CUS_LOYALTY_SCORE AS LOYALTY_SCORE,
       PRD_PRODUCT_ID AS PRODUCT_ID,
       PRD_PRODUCT_CAT AS PRODUCT_CAT,
       NVL(PURCHASE_COUNT,0) AS PURCHASE_COUNT      
  FROM CUSTOMERS,
       (SELECT TRA_CUS_CUSTOMER_ID, 
               PRD_PRODUCT_ID,
               PRD_PRODUCT_CAT,
               COUNT(*) AS PURCHASE_COUNT 
          FROM TRANSACTIONS,
               PRODUCTS
         WHERE TRA_PRD_PRODUCT_ID = PRD_PRODUCT_ID
         GROUP BY TRA_CUS_CUSTOMER_ID,
                  PRD_PRODUCT_ID,
                  PRD_PRODUCT_CAT)  TRANSACTIONS
 WHERE CUS_CUSTOMER_ID = TRA_CUS_CUSTOMER_ID(+);
