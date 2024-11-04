USE Module06;

CREATE TABLE movies (
	row_num int,
	movid_id int,
    title varchar(200),
    genre varchar(200)
);

CREATE TABLE ratings (
	userid int,
    movieid int,
    rating int,
    timestamp int
);

drop table movies;

load data
infile '/var/lib/mysql-files/ratings.csv'
into table movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
lines terminated by '\n'
IGNORE 1 ROWS;

show variables like "secure_file_priv";

SELECT * FROM movies;

SELECT * FROM ratings;