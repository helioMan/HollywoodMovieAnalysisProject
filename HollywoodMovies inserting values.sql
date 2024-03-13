INSERT INTO Movies (MovieID, Title, ReleaseYear, Genre, Director, Rating)
VALUES
    (1, 'Inception', 2010, 'Sci-Fi', 'Christopher Nolan', 8.8),
    (2, 'The Shawshank Redemption', 1994, 'Drama', 'Frank Darabont', 9.3),
    (3, 'The Godfather', 1972, 'Crime', 'Francis Ford Coppola', 9.2),
    (4, 'The Dark Knight', 2008, 'Action', 'Christopher Nolan', 9.0),
    (5, 'Pulp Fiction', 1994, 'Crime', 'Quentin Tarantino', 8.9),
    (6, 'Fight Club', 1999, 'Drama', 'David Fincher', 8.8),
    (7, 'Forrest Gump', 1994, 'Drama', 'Robert Zemeckis', 8.8),
    (8, 'The Matrix', 1999, 'Action', 'Lana Wachowski', 8.7),
    (9, 'Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan', 8.6),
    (10, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 'Fantasy', 'Peter Jackson', NULL);

INSERT INTO Actors (ActorID, Name, BirthYear, Nationality, Gender)
VALUES
    (1, 'Leonardo DiCaprio', 1974, 'American', 'Male'),
    (2, 'Morgan Freeman', 1937, 'American', 'Male'),
    (3, 'Marlon Brando', 1924, 'American', 'Male'),
    (4, 'Heath Ledger', 1979, 'Australian', 'Male'),
    (5, 'John Travolta', 1954, 'American', 'Male'),
    (6, 'Brad Pitt', 1963, 'American', 'Male'),
    (7, 'Tom Hanks', 1956, 'American', 'Male'),
    (8, 'Keanu Reeves', 1964, 'Canadian', 'Male'),
    (9, 'Jessica Chastain', 1977, 'American', 'Female'),
    (10, 'Elijah Wood', 1981, 'American', 'Male');

INSERT INTO BoxOffice (MovieID, DomesticGross, InternationalGross)
VALUES
    (1, 292.6, 535.7),
    (2, 28.3, 28.7),
    (3, 134.9, 110.7),
    (4, NULL, 470.6),
    (5, 107.9, NULL),
    (6, 37.0, 63.2),
    (7, 330.2, 347.7),
    (8, 171.5, 292.0),
    (9, 188.0, 487.1),
    (10, 315.5, NULL);
