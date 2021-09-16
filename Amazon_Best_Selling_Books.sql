
-- Top 10 authors by number of books  
SELECT TOP 10 Author, COUNT(DISTINCT BooksName) AS Number_of_Books
FROM master..['bestsellers$']
GROUP BY Author
ORDER BY Number_of_Books DESC


-- Top 10 authors by number of reviews 
SELECT TOP 10 Author, SUM(Reviews) AS Number_of_Reviews
FROM master..['bestsellers$']
GROUP BY Author
ORDER BY Number_of_Reviews DESC


-- Top 10 highly rated Fiction Books
SELECT TOP 10 BooksName, [User Rating]
FROM master..['bestsellers$']
WHERE Genre = 'Fiction'
GROUP BY BooksName, [User Rating], Genre
ORDER BY [User Rating] DESC 


-- Top 10 highly rated Non-Fiction Books
SELECT TOP 10 BooksName, [User Rating]
FROM master..['bestsellers$']
WHERE Genre = 'Non Fiction'
GROUP BY BooksName, [User Rating], Genre
ORDER BY [User Rating] DESC 


-- Top 10 Most Reviewed Fiction books 
SELECT TOP 10 BooksName, Reviews
FROM master..['bestsellers$']
WHERE Genre = 'Fiction'
GROUP BY BooksName, Reviews, Genre
ORDER BY Reviews DESC 


-- Top 10 Most Reviewed Non Fiction books 
SELECT TOP 10 BooksName, Reviews
FROM master..['bestsellers$']
WHERE Genre = 'Non Fiction'
GROUP BY BooksName, Reviews, Genre
ORDER BY Reviews DESC 


-- Top 10 Most Reviewed books & Rating with 4.7 and above 
SELECT TOP 10 BooksName, Reviews
FROM master..['bestsellers$']
WHERE [User Rating] > 4.7
GROUP BY BooksName, Reviews, [User Rating]
ORDER BY Reviews DESC 


-- Average User Rating by Genre 
SELECT Genre, AVG([User Rating]) AS Average_User_Rating
FROM master..['bestsellers$']
GROUP BY Genre


-- Average Reviews by Genre 
SELECT Genre, AVG([Reviews]) AS Average_Reviews
FROM master..['bestsellers$']
GROUP BY Genre


-- Average Price of Books with Ratings Over 4.5 
SELECT AVG([Price]) AS Average_Price, [User Rating]
FROM master..['bestsellers$']
WHERE [User Rating] >= 4.5
GROUP BY [User Rating]
ORDER BY [User Rating] ASC


-- Percentage of Genre
SELECT Genre, 
COUNT(*) * 100.0/ SUM(COUNT(*)) OVER() AS Percentage
FROM master..['bestsellers$']
GROUP BY Genre













