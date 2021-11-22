-- //Problem 1 - Create a table called person that records a person's id, name, age, height (in cm), city, and favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)//
CREATE TABLE person (
person_id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
age INTEGER NOT NULL,
height INTEGER NOT NULL,
city VARCHAR(20) NOT NULL,
favorite_color VARCHAR(20) NOT NULL
);

-- //Problem 2 - Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment//
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Dwight', 42, 182.88, 'Scranton', 'yellow'),
('Michael', 45, 175.26, 'Carbondale', 'blue'),
('Pam', 33, 162.56, 'Scranton', 'purple'),
('Jim', 34, 190.5, 'Scranton', 'red'),
('Meredith', 50, 162.56, 'Carbondale', 'black');

-- //Problem 3 - Select all the people in the person table by height from tallest to shortest//
SELECT * FROM person
ORDER BY height DESC;

-- //Problem 4 - Select all the people in the person table by height from shortest to tallest//
SELECT * FROM person
ORDER BY height ASC;

-- //Problem 5 - Select all the people in the person table by age from oldest to youngest//
SELECT * FROM person
ORDER BY age DESC;

-- //Problem 6 - Select all the people in the person table older than age 20//
SELECT * FROM person
WHERE age > 20;

-- //Problem 7 - Select all the people in the person table that are exactly 18//
SELECT * FROM person
WHERE age = 18;

-- //Problem 8 - Select all the people in the person table that are less than 20 and older than 30//
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- //Problem 9 - Select all the people in the person table that are not 27 (use not equals)//
SELECT * FROM person
WHERE age != 27;

-- //Problem 10 - Select all the people in the person table whose favorite color is not red//
SELECT * FROM person
WHERE favorite_color != 'red';

-- //Problem 11 - Select all the people in the person table whose favorite color is not red and is not blue//
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- //Problem 12 - Select all the people in the person table whose favorite color is orange or green//
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- //Problem 13 - Select all the people in the person table whose favorite color is orange, green, or blue (use IN)//
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- //Problem 14 - Select all the people in the person table whose favorite color is yellow or purple (use IN)//
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

