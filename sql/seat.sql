CREATE TABLE seat (
    seat_id BIGSERIAL NOT NULL PRIMARY KEY,
    hall_id BIGINT REFERENCES hall (hall_id),
    show_time_id BIGINT REFERENCES show_time (show_time_id),
    row_number INTEGER NOT NULL,
    column_number INTEGER NOT NULL,
    status BOOLEAN NOT NULL);