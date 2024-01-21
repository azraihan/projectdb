CREATE TABLE orders (
    order_id BIGSERIAL NOT NULL PRIMARY KEY,
    id BIGINT REFERENCES users (id) NOT NULL,
    show_time_id BIGINT REFERENCES show_time (show_time_id) NOT NULL,
    purchase_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cost INTEGER NOT NULL CHECK (cost >= 0));