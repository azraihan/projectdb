CREATE TABLE genre (
    movie_id BIGINT REFERENCES movies (movie_id) NOT NULL,
    genre VARCHAR(150) NOT NULL);

INSERT INTO genre (movie_id, genre)
VALUES (9, 'History');

INSERT INTO genre (movie_id, genre)
VALUES (9, 'Drama');

INSERT INTO genre (movie_id, genre)
VALUES (10, 'Science Fiction');

INSERT INTO genre (movie_id, genre)
VALUES (10, 'Adventure');

INSERT INTO genre (movie_id, genre)
VALUES (10, 'Action');

INSERT INTO genre (movie_id, genre)
VALUES (11, 'Crime');

INSERT INTO genre (movie_id, genre)
VALUES (11, 'Comedy');

INSERT INTO genre (movie_id, genre)
VALUES (11, 'Drama');

INSERT INTO genre (movie_id, genre)
VALUES (12, 'Drama');

INSERT INTO genre (movie_id, genre)
VALUES (12, 'Crime');

INSERT INTO genre (movie_id, genre)
VALUES (13, 'Comedy');

INSERT INTO genre (movie_id, genre)
VALUES (13, 'Drama');

INSERT INTO genre (movie_id, genre)
VALUES (13, 'Romance');

INSERT INTO genre (movie_id, genre)
VALUES (15, 'War');

INSERT INTO genre (movie_id, genre)
VALUES (15, 'Drama');

INSERT INTO genre (movie_id, genre)
VALUES (15, 'Crime');

INSERT INTO genre (movie_id, genre)
VALUES (14, 'Science Fiction');

INSERT INTO genre (movie_id, genre)
VALUES (14, 'Adventure');

INSERT INTO genre (movie_id, genre)
VALUES (14, 'Action');

INSERT INTO genre (movie_id, genre)
VALUES (16, 'Adventure');

INSERT INTO genre (movie_id, genre)
VALUES (16, 'Fantasy');