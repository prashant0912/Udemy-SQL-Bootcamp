CREATE DATABASE shirt_db;
DROP DATABASE ironman;
show databases;
USE shirt_db;
CREATE TABLE temp(
id INT NOT NULL  AUTO_INCREMENT,
article VARCHAR(50),
color VARCHAR(50),
shirt_size VARCHAR(50),
last_worn INT, PRIMARY KEY(id));



INSERT INTO shirt(article,color,shirt_size,last_worn) VALUES("T-SHIRT","WHITE","S",10),
("T-SHIRT","GREEN","S",200),("POLO T-SHIRT","BLACK","M",10),
("TANK TOP","BLUE","S",50),("T-SHIRT","PINK","S",0),
("POLO T-SHIRT","RED","M",5),
("TANK TOP","WHITE","S",200),
("TANK TOP","BLUE","M",15),
("POLO SHIRT","PURPLE","M",50);
SELECT*FROM shirt;
delete from shirt where id between 9 and 16;

update shirt set id = 9 where id = 17;
SELECT article,color FROM shirt;
SELECT article,color,shirt_size,last_worn FROM shirt WHERE shirt_size="M";

update shirt set shirt_size="L" where article="POLO SHIRT";
UPDATE shirt set last_worn=0 where last_worn=15;
update shirt set shirt_size="XS",color="OFF WHITE" WHERE color="WHITE";
DELETE from shirt where last_worn=200;
DELETE from shirt where article="TANK TOP";

DELETE FROM shirt;