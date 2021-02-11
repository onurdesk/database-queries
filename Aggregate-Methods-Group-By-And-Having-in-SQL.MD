# Aggregate Methods



-- Query 1
SELECT COUNT(*) FROM Actors;

-- Query 2
SELECT SUM(NetworthInMillions) FROM Actors;

-- Query 3
SELECT AVG(NetWorthInMillions) FROM Actors;

-- Query 4
SELECT MIN(NetWorthInMillions) FROM Actors;

-- Query 5
SELECT MAX(NetWorthInMillions) FROM Actors;

-- Query 6
SELECT STDDEV(NetWorthInMillions) FROM Actors;


# Group By 



-- Query 1
SELECT FirstName FROM Actors GROUP BY FirstName;

-- Query 2
SELECT FirstName, SecondName FROM Actors GROUP BY FirstName;

-- Query 3
SELECT Gender, COUNT(*) FROM Actors GROUP BY Gender;

-- Query 4
SELECT Gender FROM Actors GROUP BY Gender;

-- Query 5


#Having Queries

-- Query 1
SELECT MaritalStatus, AVG(NetworthInMillions) AS NetWorth FROM Actors GROUP BY MaritalStatus HAVING NetWorth > 450 OR NetWorth < 250;

-- Query 2
SELECT MaritalStatus, AVG(NetworthInMillions) AS NetWorth FROM Actors GROUP BY MaritalStatus HAVING MaritalStatus='Married';

-- Query 3
SELECT MaritalStatus, AVG(NetworthInMillions) AS NetWorth FROM Actors WHERE MaritalStatus='Married' GROUP BY MaritalStatus;
