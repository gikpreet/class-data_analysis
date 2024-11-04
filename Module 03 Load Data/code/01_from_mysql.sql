# 테이블 생성
CREATE TABLE movies (
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

CREATE TABLE users (
	row_num int,
    user_id int,
    gender char(1),
    age int,
    occupation int,
    zip varchar(10)
);

# 데이터 load 설정
show variables like "secure_file_priv";

# load data
load data
infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies.csv'
into table movies
character set latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
lines terminated by '\n'
IGNORE 1 ROWS;

load data
infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv'
into table ratings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
lines terminated by '\n'
IGNORE 1 ROWS;

load data
infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
into table users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
lines terminated by '\n'
IGNORE 1 ROWS;