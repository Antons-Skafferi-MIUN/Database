CREATE TABLE IF NOT EXISTS restaurant_tables(
        table_nr INTEGER NOT NULL,
        total_seats INTEGER NOT NULL,
        available_seats INTEGER NOT NULL,
	table_status ENUM ('vacant', 'reserved', 'inactive', 'not_served', 'served'),
        PRIMARY KEY (table_nr)
);

