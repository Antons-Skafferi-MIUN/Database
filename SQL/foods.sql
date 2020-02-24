CREATE TABLE IF NOT EXISTS foods (
	food_id INT(11) NOT NULL AUTO_INCREMENT,
	food_name VARCHAR(255) NULL DEFAULT NULL,
	food_nickname VARCHAR(255),
	food_price INT(11) NULL DEFAULT NULL,
	food_category ENUM('starter','main','dessert') NULL DEFAULT NULL,
	PRIMARY KEY (food_id)
);
