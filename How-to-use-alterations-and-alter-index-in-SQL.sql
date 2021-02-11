


-- Query 1
ALTER TABLE Actors CHANGE FirstName First_Name varchar(120);

-- Query 2
ALTER TABLE Actors MODIFY First_Name varchar(20) DEFAULT "Anonymous";

-- Query 3
ALTER TABLE Actors CHANGE First_Name First_Name varchar(20) DEFAULT "Anonymous";

-- Query 4
ALTER TABLE Actors MODIFY First_Name INT;

-- Query 5
ALTER TABLE Actors MODIFY First_Name varchar(300);

-- Query 6
ALTER TABLE Actors ADD MiddleName varchar(100);

-- Query 7
ALTER TABLE Actors DROP MiddleName;

-- Query 8
ALTER TABLE Actors ADD MiddleName varchar(100) FIRST;

-- Query 9
ALTER TABLE Actors ADD MiddleName varchar(100) AFTER DoB;

--Query 10
ALTER TABLE Actors DROP MiddleName, ADD Middle_Name varchar(100);

-- Query 11
ALTER TABLE Actors ADD INDEX nameIndex (FirstName);

-- Query 12
ALTER TABLE Actors ADD INDEX nameIndexWithOnlyTenChars (FirstName(10));

-- Query 13
ALTER TABLE Actors DROP INDEX nameIndex;

-- Query 14
ALTER TABLE Actors DROP PRIMARY KEY;

-- Query 15
CREATE TABLE Movies (Name VARCHAR(100), Released DATE, PRIMARY KEY (Name));
DESC Movies;
ALTER TABLE Movies DROP PRIMARY KEY;
ALTER TABLE Movies ADD PRIMARY KEY (Released);
