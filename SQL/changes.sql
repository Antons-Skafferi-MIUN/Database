CREATE TABLE IF NOT EXISTS changes(
        change_id INTEGER NOT NULL AUTO_INCREMENT,
        changes_made VARCHAR(255),
        orderrow_id INTEGER NOT NULL,
        PRIMARY KEY (change_id)
);

