USE MOVIE
GO

CREATE TABLE Movie (
    mID INT IDENTITY(101,1),
    title VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(50),
    PRIMARY KEY(mID),  
    CONSTRAINT title_UNIQUE UNIQUE (title)
);  
GO 

CREATE TABLE Reviewer(
    rID INT IDENTITY(201,1),
    names VARCHAR(50) NOT NULL,
    PRIMARY KEY(rID),
); 
GO

CREATE TABLE Rating(
    rID INT,
    mID INT,
    stars INT NOT NULL,
    CHECK (stars <= 5),
    ratingDate DATE,
    PRIMARY KEY(rID, mID),
    FOREIGN KEY(mID) REFERENCES Movie(mID), 
    FOREIGN KEY(rID) REFERENCES Reviewer(rID)
);
GO