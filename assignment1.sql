LOAD DATA LOCAL INFILE "/Users/Subbalakshmi/Desktop/archive/movie_titles.csv" INTO TABLE movie_titles
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(sno,year,title);

LOAD DATA LOCAL INFILE "/Users/Subbalakshmi/Desktop/archive/combined_data_1.txt" INTO TABLE training_set
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(CustomerID,Rating,Date);


CREATE TABLE movie_titles (MovieID SMALLINT UNSIGNED NOT NULL, YearOfRelease SMALLINT UNSIGNED,
       Title VARCHAR(400),PRIMARY KEY (Title));
       

SHOW VARIABLES LIKE "local_infile";

SET GLOBAL local_infile = ON;

SHOW VARIABLES LIKE "secure_file_priv";


CREATE TABLE training_set (CustomerID INT UNSIGNED NOT NULL, Rating TINYINT UNSIGNED,
       Date DATE,MovieID SMALLINT UNSIGNED NOT NULL, 
       FOREIGN KEY (MovieID) REFERENCES movie_titles(MovieID));
       
       
       
mysql --local-infile=1 --user=root --password

select * from movie_titles;

select * from training_set;
