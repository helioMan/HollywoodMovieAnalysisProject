-- table for movies here and details regarding the movies
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    ReleaseYear INT,
    Genre VARCHAR(100),
    Director VARCHAR(100),
    Rating DECIMAL(3, 1)
);

-- table for actors of that movie
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(100),
    BirthYear INT,
    Nationality VARCHAR(50),
    Gender ENUM('Male', 'Female')
);

-- table for boxoffice of that movie
CREATE TABLE BoxOffice (
    MovieID INT PRIMARY KEY,
    DomesticGross DECIMAL(12, 2), -- Gross amount in home country
    InternationalGross DECIMAL(12, 2), -- Gross amount internationally
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
