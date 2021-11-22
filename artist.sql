-- //Problem 1 - Add 3 new artists to the existing artist table//
INSERT INTO artist (artist_id, artist_name)
VALUES 
(276, 'Toto'),
(277, 'Hans Zimmer'),
(278, 'Sebastien Tellier');

-- //Problem 2 - Select 10 artists in reverse alphabetical order//
SELECT * FROM artist
ORDER BY artist_name DESC
LIMIT 10;


--//Problem 3 - Select 5 artists in alphabetical order//
SELECT * FROM artist
ORDER BY artist_name ASC
LIMIT 5;

--//Problem 4 - Select all artists that start with the word 'Black'
SELECT * FROM artist
WHERE artist_name LIKE 'Black%';

--//Problem 5 - Select all artists that contain the word 'Black'
SELECT * FROM artist
WHERE artist_name LIKE '%Black%';
