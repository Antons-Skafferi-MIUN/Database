CREATE TABLE IF NOT EXISTS drinks (
	drink_id INT(11) NOT NULL AUTO_INCREMENT,
	drink_name VARCHAR(75) NULL DEFAULT NULL,
	drink_type VARCHAR(75) NULL DEFAULT NULL,
	drink_category VARCHAR(75),
	drink_price INT(11) NOT NULL,
	PRIMARY KEY (drink_id)
);
