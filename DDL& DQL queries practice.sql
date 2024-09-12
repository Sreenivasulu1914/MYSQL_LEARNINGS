USE  PRACTICE_DB;
SHOW TABLES;
SELECT * FROM EMPLOYEE_TB;
ALTER TABLE EMPLOYEE_TB ADD COLUMN PHONE_NO INT AFTER DEPARTMENT;
ALTER TABLE EMPLOYEE_TB MODIFY COLUMN PHONE_NO MEDIUMINT;
ALTER TABLE EMPLOYEE_TB CHANGE PHONE_NO PHONE INT;
SELECT * FROM EMPLOYEE_TB;
ALTER TABLE EMPLOYEE_TB DROP COLUMN PHONE;
SELECT * FROM EMPLOYEE_TB;
SELECT * FROM EMPLOYEE_TB WHERE EMP_NAME="VISHNU";
RENAME TABLE EMPLOYEE_TB TO STAFF;
RENAME TABLE STAFF TO STAFF_TB;
SELECT * FROM STAFF_TB;
SELECT * FROM STAFF_TB WHERE SALARY =16000;
SELECT EMP_NAME,DEPARTMENT FROM STAFF_TB;
SELECT EMP_ID,EMP_NAME FROM STAFF_TB WHERE SALARY >15000 AND DEPARTMENT ="MANAGER";
SELECT * FROM STAFF_TB ORDER BY SALARY DESC;
SELECT * FROM STAFF_TB ORDER BY SALARY ASC;
SELECT * FROM STAFF_TB WHERE SALARY >18000;
SELECT * FROM STAFF_TB WHERE SALARY < 30000;
SELECT * FROM STAFF_TB WHERE SALARY = 40000;
SELECT * FROM STAFF_TB WHERE SALARY <= 30000;
SELECT * FROM STAFF_TB WHERE SALARY >= 30000;
SELECT * FROM STAFF_TB WHERE SALARY = 35000;
SELECT * FROM STAFF_TB WHERE SALARY BETWEEN 20000 AND 35000;
SELECT*  FROM STAFF_TB WHERE SALARY IN (10000,40000);
SELECT * FROM STAFF_TB WHERE SALARY != 30000;
SELECT * FROM STAFF_TB WHERE SALARY NOT IN(20000,16000,40000,35000);



SELECT * FROM MART_CUSTOMERS;
ALTER TABLE MART_CUSTOMERS ADD (ADDRESS VARCHAR(50),RATING INT);
DESC MART_CUSTOMERS;
SELECT * FROM MART_CUSTOMERS;
ALTER TABLE MART_CUSTOMERS CHANGE EMAIL EMAIL_ADDRESS VARCHAR(40);
ALTER TABLE MART_CUSTOMERS DROP COLUMN RATING;
RENAME TABLE MART_CUSTOMERS TO CUSTOMER_TB;
DESC CUSTOMER_TB;
SELECT * FROM CUSTOMER_TB;
SELECT * FROM CUSTOMER_TB WHERE MEMBERSHIP_LEVEL="GOLD";
ALTER TABLE CUSTOMER_TB DROP ADDRESS;
ALTER TABLE CUSTOMER_TB MODIFY COLUMN PHONE_NUMBER BIGINT;
SELECT CUSTOMER_NAME,EMAIL_ADDRESS FROM CUSTOMER_TB;
SELECT * FROM CUSTOMER_TB WHERE PHONE_NUMBER = 9876543210;
SELECT CUSTOMER_NAME,EMAIL_ADDRESS FROM CUSTOMER_TB WHERE MEMBERSHIP_LEVEL="SILVER";
SELECT CUSTOMER_NAME FROM CUSTOMER_TB WHERE EMAIL_ADDRESS ="RAVI@MAIL.COM";




SELECT * FROM MART_SALES;
ALTER TABLE MART_SALES ADD COLUMN(PRODUCT_NAME VARCHAR(30),CUSTOMER_NAME VARCHAR(20),EMPLOYEE_NAME VARCHAR(30));
ALTER TABLE MART_SALES DROP COLUMN EMPLOYEE_NAME;
RENAME TABLE MART_SALES TO MART_SALES_TB;
SELECT * FROM MART_SALES_TB;
ALTER TABLE MART_SALES_TB CHANGE COLUMN TOTAL_AMOUNT  AMOUNT VARCHAR(30);
DESC MART_SALES_TB;
ALTER TABLE MART_SALES_TB MODIFY COLUMN AMOUNT INT;
SELECT * FROM MART_SALES_TB WHERE QUANTITY_SOLD = 10;
SELECT PRODUCT_ID,CUSTOMER_ID FROM MART_SALES_TB WHERE AMOUNT IN(640,720);
SELECT * FROM MART_SALES_TB WHERE AMOUNT>=250;
SELECT SALE_DATE FROM MART_SALES_TB WHERE EMPLOYEE_ID = 8;
SELECT * FROM MART_SALES_TB WHERE AMOUNT NOT IN (640,720,840);







