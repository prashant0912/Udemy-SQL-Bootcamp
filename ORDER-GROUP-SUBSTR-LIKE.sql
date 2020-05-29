CREATE DATABASE book_shop;
use book_shop;
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
DESC books;
 SELECT concat(author_fname," ",author_lname) AS "FULL NAME" from books;

SELECT REPLACE (title," ","->") FROM books;

SELECT author_lname AS forwards,REVERSE(author_lname) AS backwards FROM books;
SELECT UPPER (CONCAT(author_fname," ",author_lname)) AS "Full name in caps" FROM books;
select concat(title," was released in ",released_year) AS blurb FROM books;
SELECT title,char_length(title) AS "Character count" FROM books;
SELECT concat(
SUBSTRING(title,1,10),"......") AS "short title" ,concat(author_lname," ",author_fname) AS "author",concat(stock_quantity, " " ,"in stock") AS "STOCK" FROM books;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           SELECT  title FROM books WHERE title LIKE "%stories%";
           SELECT*FROM books;
           
           SELECT title,pages FROM books  ORDER BY pages DESC LIMIT 1;
           SELECT concat(title,"-",released_year) AS  "summary" from books order by released_year DESC limit 3;
 
 SELECT title,author_lname FROM books where author_lname like " "; 
SELECT title,author_lname FROM books ORDER by author_lname,title;
SELECT upper(concat("MY FAVORITE AUTHOR IS ",author_fname," ",author_lname)) as "yell" from books order by author_lname;
select author_lname ,count(*) from books group by author_lname; 



#exercise

#print the number of books in the table
SELECT count(book_id) from books;
#print out how many books were released in each year
SELECT released_year,count(released_year) from books group by released_year;
#print out the total no. of books in stock
select sum(stock_quantity) from books;
#find the average released year for each author
SELECT author_fname,author_lname,avg(released_year)  from books group by author_lname,author_fname;
#find the full name of the author who wrote the longest the book 
select CONCAT(author_fname," ",author_lname),pages from books order by pages desc limit 1;

#new question
select released_year,count(released_year),avg(pages)from books group by released_year order by released_year;
#exercise

select current_time();
select current_date();
select dayofweek(current_date());
select dayname(current_date());
select date_format(current_date(),"%m - %d% -%y");
select concat(monthname(current_date()),"-" ,dayofweek(current_date())," ","at", current_time());
create table tweets_table(
content VARCHAR(200),
username VARCHAR(50),
time timestamp default now());
drop table tweets_table;

insert into tweets_table(content,username,time) values("hello my name is prashant","mauryachhotu");
select content,username,time from tweets_table;


#logical exercise
#select all books written before 1980 where 1980 is not inlusive
select title,released_year from books where released_year<1980 order by released_year;
#select all books written by eggers or chabon
select * from books where author_lname = "eggers" || "chabon";
#select all books wriiten by lahiri
select  * from books where author_lname = "Lahiri" && released_year>2000;
#select all books with page count between 100 and 200
select * from books where pages  between 100 and 200;
#select all books where author_lname starts with a "c" or "s"
select * from books where author_lname like "C%" || "s%";
#case statement 
select title , author_lname,
CASE when title like "%stories%" then "short stories"
	when title like "%just kids%" then " Memoir" 
    when title like "%Heartbreaking%" then "Memoir"
    else "Novel"
    end as TYPE from books ;
    #case statement
    
    select  
    author_lname,count(*) ,case  when count( author_lname) > 1 then "books"
    else "book"
    end as count
    from books group by author_lname ; 
    

select * from books;

SELECT author_lname, title
FROM books ORDER BY 2;

