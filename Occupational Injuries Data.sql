select * from dbo.[Occupational Injuries]

-- Removing unnecessary columns

select UPA, EventDate, Employer, City, State, NatureTitle, Part_of_Body_Title, EventTitle, SourceTitle, Hospitalized
from dbo.[Occupational Injuries]




-- Looking at which states contain the most occupational injuries

select TOP 10 State, COUNT(State) AS Most_Injuries
FROM dbo.[Occupational Injuries]
GROUP BY State
ORDER BY COUNT(State) DESC

-- Top 5 states with most occupational injuries are Texas(1), Florida(2), Pennsylvania(3), Ohio(4), and Illinois(5)




-- Looking at the amount of injuries which involves falling

select EventTitle, Part_of_Body_Title, Hospitalized
FROM dbo.[Occupational Injuries]
WHERE EventTitle LIKE '%fall%'

-- 31,891 out of 85,447 injuries are fall-related




-- Looking at head injuries due to falling

SELECT UPA, Hospitalized, Amputation, Part_of_Body_Title AS [Body Part], EventTitle
FROM     [Occupational Injuries]
WHERE  (Part_of_Body_Title LIKE '%head%') AND (EventTitle LIKE '%fall%')
ORDER BY Hospitalized DESC

-- 1,159 fall-related injuries result in at least the head being injured. 3.6% of all fall-related injuries involve the head being injured.




-- Looking at which of the top-6 most populated cities in Texas contain the most occupational injuries

SELECT Top 6 City, COUNT(City) AS Occurrences
FROM     [Occupational Injuries]
WHERE  (City LIKE 'San Antonio') OR
                  (City LIKE 'Fort Worth') OR
                  (City LIKE 'Dallas') OR
                  (City LIKE 'Austin') OR
                  (City LIKE 'Houston') OR
                  (City LIKE 'El Paso')
GROUP BY City
ORDER BY Occurrences DESC

-- Houston contains the most occupational injuries. Total injuries between the 6 cities equals to 4,115.


