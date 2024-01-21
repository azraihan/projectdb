CREATE TABLE movies (
    movie_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    director VARCHAR(150) NOT NULL,
    release_date DATE NOT NULL,
    tmdb_id INTEGER NOT NULL);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('Oppenheimer', 'Christopher Nolan', '2023-07-21',872585);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('The Marvels', 'Nia DaCosta', '2023-11-10', 609681);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('The Wolf of Wall Street', 'Martin Scorsese', '2013-12-25', 106446);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('The Shawshank Redemption', 'Frank Darabont', '1994-09-23', 278);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('Forrest Gump', 'Robert Zemeckis', '1994-06-07', 13);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('Inception', 'Christopher Nolan', '2010-07-16', 27205);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('Dunkirk', 'Christopher Nolan', '2017-07-19', 374720);

INSERT INTO movies (name, director, release_date, tmdb_id)
VALUES ('Harry Potter and the Philosopher''s Stone', 'Chris Columbus', '2001-11-16', 671);