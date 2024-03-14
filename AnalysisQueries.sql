-- list of all the movies released in the year 1994
SELECT * FROM Movies WHERE ReleaseYear = 1994;


-- find the average rating of all movies
SELECT AVG(Rating) AS AverageRating FROM Movies;


-- getting the top5 highest grossing movies here but in domestic box office
SELECT m.Title, b.DomesticGross
FROM Movies m
INNER JOIN BoxOffice b ON m.MovieID = b.MovieID
ORDER BY b.DomesticGross DESC
LIMIT 5;


-- actors born after 1980 
SELECT * FROM Actors WHERE BirthYear > 1980;


-- counting number of movies here in each genre
SELECT Genre, COUNT(*) AS NumberOfMovies
FROM Movies
GROUP BY Genre;


-- oldest actor in the database
SELECT * FROM Actors ORDER BY BirthYear ASC LIMIT 1;


-- movies directed by christopher nolan
SELECT * FROM Movies WHERE Director = 'Christopher Nolan';


-- list of the actor who appeared in the most movies
SELECT a.*, COUNT(*) AS MovieCount
FROM Actors a
INNER JOIN actors ma ON a.ActorID = ma.ActorID
GROUP BY a.ActorID
ORDER BY MovieCount DESC
LIMIT 1;


-- finding out the total international gross earnings of all movies
SELECT SUM(InternationalGross) AS TotalInternationalGross FROM BoxOffice;


-- here is the list of all the movies with their respective directors and ratings, sorted by rating in descending order
SELECT m.Title, m.Director, m.Rating
FROM Movies m
ORDER BY m.Rating DESC;


-- here is the inner join to rtrieve mvie dtails with Box Office Gross
SELECT m.Title, m.ReleaseYear, m.Genre, b.DomesticGross, b.InternationalGross
FROM Movies m
INNER JOIN BoxOffice b ON m.MovieID = b.MovieID;


-- here is the left join to list the movies with their Box Office Gross (including null values for movies without box office data):
SELECT m.Title, m.ReleaseYear, b.DomesticGross, b.InternationalGross
FROM Movies m
LEFT JOIN BoxOffice b ON m.MovieID = b.MovieID;


-- here is the right join to retrieve box office gross for all movies (including null values for movies without box office data):
SELECT m.Title, m.ReleaseYear, b.DomesticGross, b.InternationalGross
FROM BoxOffice b
RIGHT JOIN Movies m ON m.MovieID = b.MovieID;
