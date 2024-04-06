SELECT *
FROM     Texas_Table

-- Looking at the sum of fall-related injuries in Texas cities

SELECT City, SUM(Occurrences) AS FallTotal
FROM dbo.Texas_Table
WHERE (City LIKE 'Dallas') 
OR (City LIKE 'Houston') 
OR (City LIKE 'San Antonio') 
OR (City LIKE 'Austin')
OR (City LIKE 'El Paso')
OR (City LIKE 'Fort Worth')
GROUP BY City

-- Out of 4,115 occupational injuries, 1,485 of them are fall-related. Roughly 36%.