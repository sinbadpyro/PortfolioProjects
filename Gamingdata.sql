SELECT * FROM vgsales

--Displaying everything but Ordering the games by North American sales 
SELECT * FROM vgsales 
ORDER BY NA_Sales

--Displaying everything but Ordering the games by European sales
SELECT * FROM vgsales 
ORDER BY EU_Sales

--Displaying everything but Ordering the games by Global sales
SELECT * FROM vgsales 
ORDER BY Global_sales

--Displaying everything but Ordering the games by platform
SELECT * FROM vgsales 
ORDER BY Platform

--Displaying everything but Ordering the games by Year
SELECT * FROM vgsales 
ORDER BY Year

--Displaying everything but Ordering the games by Genre
SELECT * FROM vgsales 
ORDER BY Genre

--Displaying everything but Ordering the games by Rank 
SELECT * FROM vgsales 
ORDER BY Rank 

--Number of games you'll find in a platform 
SELECT 
   
    COUNT(CASE WHEN Platform = 'NES' THEN 1 END) AS Nes_games,
    COUNT(CASE WHEN Platform = 'GB' THEN 1 END) AS GB_games,
    COUNT(CASE WHEN Platform = 'DS' THEN 1 END) AS DS_games,
    COUNT(CASE WHEN Platform = 'X360' THEN 1 END) AS X360_games,
    COUNT(CASE WHEN Platform = 'PS2' THEN 1 END) AS ps2_games,
    COUNT(CASE WHEN Platform = 'PS3' THEN 1 END) AS ps3_games,
    COUNT(CASE WHEN Platform = 'SNES' THEN 1 END) AS snes_games,
    COUNT(CASE WHEN Platform = 'N64' THEN 1 END) AS N64_games
FROM vgsales;

--Finding the global average sales made by each publisher
SELECT Publisher, AVG(Global_sales) AS Global_Average
FROM vgsales 
GROUP BY Publisher
ORDER BY Global_Average DESC;


--Finding the most profitable genre 
SELECT Genre, AVG(Global_Sales) AS Sales FROM vgsales
GROUP BY Genre
ORDER BY Sales DESC

--Finding the most profitable genre and publisher
SELECT Genre, Publisher, AVG(Global_Sales) AS Sales 
FROM vgsales
GROUP BY Genre, Publisher
ORDER BY Sales DESC;



