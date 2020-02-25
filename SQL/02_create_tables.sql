--
-- This is the sql file needed to create
-- all tables in the database.
--
--
-- Create table drinks
--
CREATE TABLE IF NOT EXISTS drinks (
  drink_id INT(11),
  drink_name VARCHAR(75) NOT NULL,
  drink_type VARCHAR(75) NOT NULL,
  drink_category ENUM('alkohol', 'alkoholfritt', 'kaffe', 'sprit'),
  drink_price INT(11) NOT NULL
);
--
-- Create table events
--
CREATE TABLE IF NOT EXISTS events (
  event_id INT NOT NULL,
  event_name VARCHAR(100) NOT NULL,
  event_date VARCHAR(10) NOT NULL
);
--
-- Create table foods
--
CREATE TABLE IF NOT EXISTS foods (
  food_id INT(11) NOT NULL,
  food_name VARCHAR(255) NOT NULL,
  food_price INT(11) NOT NULL,
  food_category ENUM('starter', 'main', 'dessert')
);
--
-- Create table lunches
--
CREATE TABLE IF NOT EXISTS lunches(
  lunch_id INTEGER NOT NULL,
  lunch_name VARCHAR(255) NOT NULL,
  lunch_week INTEGER(10) NOT NULL,
  lunch_day INTEGER(1) NOT NULL
);
--
-- Create table orders
--
CREATE TABLE IF NOT EXISTS orders (
  order_id INT(11) NOT NULL,
  order_price INT(11) NOT NULL,
  order_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  table_id INTEGER NOT NULL
);
--
-- Create table reservations
--
CREATE TABLE IF NOT EXISTS reservations(
  reservation_id INTEGER NOT NULL,
  reservation_name VARCHAR(255),
  reservation_date DATETIME NOT NULL,
  customer_phone VARCHAR(15)
);
--
-- Create table restaurant_tables
--
CREATE TABLE IF NOT EXISTS restaurant_tables(
  table_id INTEGER NOT NULL,
  table_total_seats INTEGER,
  table_available_seats INTEGER,
  table_status ENUM (
    'vacant',
    'reserved',
    'inactive',
    'not_served',
    'served'
  )
);
--
-- Create table order_changes
--
CREATE TABLE IF NOT EXISTS order_changes(
  order_change_id INTEGER NOT NULL,
  order_change_made VARCHAR(255),
  order_change_order_row_id INTEGER
);
--
-- Create table order_rows
--
CREATE TABLE IF NOT EXISTS order_rows(order_row_id INTEGER NOT NULL);
--
-- Create table personnel
--
CREATE TABLE IF NOT EXISTS personnel (
  personnel_id INT(10) NOT NULL,
  personnel_name VARCHAR(100) NOT NULL,
  personnel_phone VARCHAR(50) NOT NULL,
  personnel_type ENUM('kök', 'restaurang') NOT NULL
);
--
-- Create table shifts
--
CREATE TABLE IF NOT EXISTS shifts (
  shift_id INT NOT NULL,
  shift_date DATE NOT NULL,
  shift_personnel INT(10),
  personnel_id INT(10) NOT NULL
);