CREATE TABLE hall (
    hall_id BIGSERIAL NOT NULL PRIMARY KEY,
    theater_id BIGINT REFERENCES theater (theater_id),
    name VARCHAR(150) NOT NULL,
    type VARCHAR(15) NOT NULL);

ALTER TABLE hall ALTER COLUMN theater_id SET NOT NULL;