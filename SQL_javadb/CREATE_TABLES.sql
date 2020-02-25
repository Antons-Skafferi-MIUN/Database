-- This is the sql syntax for javaDB
-- Creating tables 

--------------------------------------------------------------------------------


CREATE TABLE drinks (
  drink_id INT NOT NULL,
  drink_name VARCHAR(75) NOT NULL,
  drink_type VARCHAR(75) NOT NULL,
  drink_category VARCHAR(100) CONSTRAINT drink_category_ck CHECK(drink_category IN('alkohol', 'alkoholfritt', 'kaffe', 'sprit')),
  drink_price INT NOT NULL
);

--------------------------------------------------------------------------------

CREATE TABLE events (
  event_id INT NOT NULL,
  event_name VARCHAR(100) NOT NULL,
  event_date VARCHAR(10) NOT NULL
);


--------------------------------------------------------------------------------


CREATE TABLE foods (
  food_id INT NOT NULL,
  food_name VARCHAR(255) NOT NULL,
  food_price INT NOT NULL,
  food_category VARCHAR(100) CONSTRAINT food_category_ck CHECK(food_category IN('starter', 'main', 'dessert'))
);


--------------------------------------------------------------------------------


CREATE TABLE lunches(
  lunch_id INTEGER NOT NULL,
  lunch_name VARCHAR(255) NOT NULL,
  lunch_week INTEGER NOT NULL,
  lunch_day INTEGER NOT NULL
);


--------------------------------------------------------------------------------



CREATE TABLE orders (
  order_id INT NOT NULL,
  order_price INT NOT NULL,
  order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  table_id INTEGER NOT NULL
);



--------------------------------------------------------------------------------



CREATE TABLE reservations(
  reservation_id INTEGER NOT NULL,
  reservation_name VARCHAR(255),
  reservation_date TIMESTAMP NOT NULL,
  customer_phone VARCHAR(15)
);



--------------------------------------------------------------------------------


CREATE TABLE restaurant_tables(
  table_id INTEGER NOT NULL,
  table_total_seats INTEGER,
  table_available_seats INTEGER,
  table_status VARCHAR(100) CONSTRAINT table_status_ck CHECK (table_status IN(
    'vacant',
    'reserved',
    'inactive',
    'not_served',
    'served'
  ))
);



--------------------------------------------------------------------------------


CREATE TABLE order_changes(
  order_change_id INTEGER NOT NULL,
  order_change_made VARCHAR(255),
  order_change_order_row_id INTEGER
);


--------------------------------------------------------------------------------


CREATE TABLE order_rows(order_row_id INTEGER NOT NULL);



--------------------------------------------------------------------------------


CREATE TABLE personnel (
  personnel_id INT NOT NULL,
  personnel_name VARCHAR(100) NOT NULL,
  personnel_phone VARCHAR(50) NOT NULL,
  personnel_type VARCHAR(100) CONSTRAINT personnel_type_ck CHECK(personnel_type IN('kök', 'restaurang')) NOT NULL
);


--------------------------------------------------------------------------------


CREATE TABLE shifts (
  shift_id INT NOT NULL,
  shift_date TIMESTAMP NOT NULL,
  shift_personnel INT,
  personnel_id INT NOT NULL
);
