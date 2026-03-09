USE Property24;
GO

--11. Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM property_details
WHERE PROVINCE = 'Gauteng'
ORDER BY Monthly_Repayment ASC

--12. Find Western Cape properties priced below R3,000,000.
SELECT *
FROM property_details
WHERE PROVINCE = 'Western Cape' AND PROPERTY_PRICE < 3000000;

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT *
FROM property_details
WHERE PROVINCE = 'KwaZulu-Natal' AND BEDROOMS >= 3;

--14. Find properties in Limpopo or Free State ordered by property price.
SELECT *
FROM property_details
WHERE PROVINCE IN ('Limpopo','Free State')
ORDER BY PROPERTY_PRICE;

--15. Show the 10 most expensive properties.
SELECT TOP 10 *
FROM property_details
ORDER BY PROPERTY_PRICE DESC

--16. Show the 5 cheapest properties.
SELECT TOP 5 *
FROM property_details
ORDER BY PROPERTY_PRICE ASC;

--17. Show the top 10 properties with the largest floor size.
SELECT TOP 10*
FROM property_details
ORDER BY FLOOR_SIZE DESC; 

--18. Which province appears to have the highest priced properties?
SELECT TOP 1 PROVINCE, AVG(PROPERTY_PRICE) AS AVG_PRICE
FROM property_details
GROUP BY PROVINCE
ORDER BY AVG_PRICE DESC

--19. Which cities appear to have the most affordable housing?
SELECT TOP 5 CITY, AVG(PROPERTY_PRICE) AS AVG_PRICE
FROM property_details
GROUP BY CITY
ORDER BY AVG_PRICE ASC

--20. What minimum income is typically required for properties priced above R4,000,000?
SELECT MIN(Min_Gross_Monthly_Income) AS minimum_income
FROM property_details
WHERE PROPERTY_PRICE > 4000000



