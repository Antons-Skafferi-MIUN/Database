CREATE TABLE IF NOT EXISTS reservations(
        reservation_id INTEGER NOT NULL AUTO_INCREMENT,
        reservation_name VARCHAR(255),
        reservation_date DATETIME NOT NULL,
        customer_phone VARCHAR(15),
        table_nr INTEGER NOT NULL,
        PRIMARY KEY (reservation_id)
);

