create database Property24;

USE Property24;
GO

-- 1. Display all properties in the database.

SELECT *
FROM property_details;

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.

SELECT CITY, PROVINCE, PROPERTY_PRICE
FROM property_details;

--3. List all distinct provinces in the table.

SELECT DISTINCT PROVINCE
FROM property_details;

--4. Find all properties located in Gauteng.
SELECT *
FROM property_details
WHERE PROVINCE = 'Gauteng';

--5. Show properties priced under R1,500,000.
SELECT *
FROM property_details
WHERE PROPERTY_PRICE < 1500000;

--6. List properties with more than 3 bedrooms.
SELECT *
FROM property_details
WHERE BEDROOMS > 3;

--7. Find properties with parking for at least 2 cars.
SELECT *
FROM property_details
WHERE PARKING >= 2

--8. Show properties where the monthly repayment is greater than R25,000.
SELECT *
FROM property_details
WHERE Monthly_Repayment > 25000

--9. Show all properties ordered by property price from highest to lowest.
SELECT *
FROM property_details
ORDER BY PROPERTY_PRICE DESC;

--10. List properties ordered by floor size from smallest to largest.
SELECT *
FROM property_details
ORDER BY FLOOR_SIZE ASC;