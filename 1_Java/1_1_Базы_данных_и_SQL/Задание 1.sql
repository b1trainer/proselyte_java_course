CREATE TABLE Person (
  PersonId INT, 
  FirstName VARCHAR(255), 
  LastName VARCHAR(255)
);

CREATE TABLE Address (
  AddressId INT, 
  PersonId INT, 
  City VARCHAR(255), 
  State VARCHAR(255)
);

TRUNCATE TABLE Person;
INSERT INTO Person (PersonId, LastName, FirstName) VALUES (1, 'Wang', 'Allen');

TRUNCATE TABLE Address;
INSERT INTO Address (AddressId, PersonId, City, State) VALUES (1, 2, 'New York City', 'New York');

SELECT FirstName, LastName, a.City, a.State FROM Person
LEFT JOIN Address a ON Person.PersonId = a.PersonId;