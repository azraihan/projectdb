CREATE TABLE show_time (
    show_time_id BIGSERIAL NOT NULL PRIMARY KEY,
    hall_id BIGINT REFERENCES hall (hall_id),
    movie_id BIGINT REFERENCES movies (movie_id),
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL);

ALTER TABLE show_time ALTER COLUMN hall_id SET NOT NULL;
ALTER TABLE show_time ALTER COLUMN movie_id SET NOT NULL;