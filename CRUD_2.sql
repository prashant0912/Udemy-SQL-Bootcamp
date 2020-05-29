SHOW databases;
CREATE DATABASE cats_data;
USE cats_data;
CREATE TABLE cats(
cat_id INT AUTO_INCREMENT,
name VARCHAR(200),
breed VARCHAR(200),
age INT,
PRIMARY KEY(cat_id));

INSERT INTO cats(name,breed,age)VALUES("RINGO","TABBY",4),("CINDE","MAINECOON",10),("DUBLEDOOR","MAINECOON",11),
("egg","persian",4),("MISTY","TABBY",13),("GEORGE MICHAEL","ROGDOLL",9),("JACSON","SHPYNX",7);

SELECT*FROM cats;
SELECT cat_id FROM cats;
SELECT name,breed FROM cats;
SELECT name,age FROM cats WHERE breed="TABBY";
SELECT cat_id,age FROM cats WHERE cat_id=age;

UPDATE cats SET name="JACK" WHERE name="JACSON";
UPDATE cats SET breed="BRITISH SHORTHAIR" WHERE  name="RINGO";
UPDATE cats SET age=12 WHERE breed="MAINECOON";

DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE cat_id=age;
DELETE FROM cats;