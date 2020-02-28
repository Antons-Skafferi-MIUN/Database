-- This is the sql syntax for javaDB
-- Creating tables and declaring primary keys(auto_increment)


CREATE TABLE drinks (
  drink_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  drink_name VARCHAR(75) NOT NULL,
  drink_type VARCHAR(75) NOT NULL,
  drink_category VARCHAR(100) CONSTRAINT drink_category_ck CHECK(drink_category IN('alkohol', 'alkoholfritt', 'kaffe', 'sprit')),
  drink_price INT NOT NULL,
  constraint drinks_pk PRIMARY KEY (drink_id)
);


CREATE TABLE events (
  event_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  event_name VARCHAR(100) NOT NULL,
  event_date VARCHAR(10) NOT NULL,
  constraint events_pk PRIMARY KEY (event_id)
);


CREATE TABLE foods (
  food_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  food_name VARCHAR(255) NOT NULL,
  food_price INT NOT NULL,
  food_category VARCHAR(100) CONSTRAINT food_category_ck CHECK(food_category IN('starter', 'main', 'dessert')),
  constraint foods_pk PRIMARY KEY (food_id) 
);


CREATE TABLE lunches(
  lunch_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  lunch_name VARCHAR(255) NOT NULL,
  lunch_week INTEGER NOT NULL,
  lunch_day INTEGER NOT NULL,
  constraint lunches_pk PRIMARY KEY (lunch_id)
);


CREATE TABLE orders (
  order_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  order_price INT NOT NULL,
  order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  table_id INTEGER NOT NULL,
  constraint orders_pk PRIMARY KEY (order_id)
);

CREATE TABLE reservations(
  reservation_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  reservation_name VARCHAR(255),
  reservation_date TIMESTAMP NOT NULL,
  customer_phone VARCHAR(15),
  constraint reservations_pk PRIMARY KEY (reservation_id)
);

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
  )),
  constraint restaurant_tables_pk PRIMARY KEY (table_id)
);

CREATE TABLE order_changes(
  order_change_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  order_change_made VARCHAR(255),
  order_change_order_row_id INTEGER,
  constraint order_changes_pk PRIMARY KEY (order_change_id)
);

CREATE TABLE order_rows(order_row_id INTEGER NOT NULL, constraint order_rows_pk PRIMARY KEY (order_row_id));

CREATE TABLE personnel (
  personnel_id INT NOT NULL,
  personnel_name VARCHAR(100) NOT NULL,
  personnel_phone VARCHAR(50) NOT NULL,
  personnel_type VARCHAR(100) CONSTRAINT personnel_type_ck CHECK(personnel_type IN('kök', 'restaurang')) NOT NULL,
  constraint personnel_pk PRIMARY KEY (personnel_id)
);

CREATE TABLE shifts (
  shift_id INT not null GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
  shift_date TIMESTAMP NOT NULL,
  shift_personnel INT,
  personnel_id INT NOT NULL,
  constraint shifts_pk PRIMARY KEY (shift_id)
);
