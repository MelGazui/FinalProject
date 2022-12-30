CREATE DATABASE artistas;
SET SQL_SAFE_UPDATES = 0;/*need this query to disable safe updates*/
USE artistas;

CREATE TABLE artista(
id int (20) AUTO_INCREMENT,
artist_name VARCHAR (250),
most_popular_song VARCHAR (250),
most_popular_member VARCHAR (250),
PRIMARY KEY (id)
);