CREATE TABLE IF NOT EXISTS lunches(
        lunch_id INTEGER NOT NULL AUTO_INCREMENT,
        lunch_name VARCHAR(255),
        lunch_week INTEGER(10),
        lunch_day INTEGER(1),
        PRIMARY KEY (lunch_id)
);
