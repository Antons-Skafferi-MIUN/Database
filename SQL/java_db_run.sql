--
-- This is the sql file needed to create
-- all tables in the database.
--
--
-- Create table drinks
--
CREATE TABLE drinks (
  drink_id INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  drink_name VARCHAR(75) NOT NULL,
  drink_type VARCHAR(75) NOT NULL,
  drink_category VARCHAR(25),
  drink_price INTEGER NOT NULL
);
--
-- Create table 
--
CREATE TABLE events (
  event_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  event_name VARCHAR(100) NOT NULL,
  event_date VARCHAR(10) NOT NULL
);
--
-- Create table foods
--
CREATE TABLE foods (
  food_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  food_name VARCHAR(255) NOT NULL,
  food_price INTEGER NOT NULL,
  food_category VARCHAR(25)
);
--
-- Create table lunches
--
CREATE TABLE lunches(
  lunch_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  lunch_name VARCHAR(255) NOT NULL,
  lunch_week INTEGER NOT NULL,
  lunch_day INTEGER NOT NULL
);
--
-- Create table orders
--
CREATE TABLE orders (
  order_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  order_time TIMESTAMP NOT NULL,
  table_id INTEGER NOT NULL
);
--
-- Create table reservations
--
CREATE TABLE reservations(
  reservation_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  reservation_name VARCHAR(255),
  reservation_date DATE NOT NULL,
  reservation_phone VARCHAR(15) NOT NULL,
  table_id INTEGER NOT NULL
);
--
-- Create table restaurant_tables
--
CREATE TABLE restaurant_tables(
  table_id INTEGER NOT NULL,
  table_total_seats INTEGER,
  table_available_seats INTEGER,
  table_status VARCHAR(25)
);
--
-- Create table order_rows
--
CREATE TABLE order_rows(
  order_row_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  order_id INTEGER NOT NULL,
  food_id INTEGER,
  drink_id INTEGER,
  order_change VARCHAR(250)
);
--
-- Create table personnel
--
CREATE TABLE personnel (
  personnel_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  personnel_name VARCHAR(100) NOT NULL,
  personnel_phone VARCHAR(50) NOT NULL,
  personnel_type VARCHAR(25) NOT NULL
);
--
-- Create table shifts
--
CREATE TABLE shifts (
  shift_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  shift_date DATE NOT NULL,
  shift_type VARCHAR(25),
  personnel_id INTEGER NOT NULL
);
-- This sql file modifies the tables in the database.
--------------------------------------------------------
-- 1. set all primary keys.
--------------------------------------------------------
--------------------------------------------------------
ALTER TABLE drinks
ADD
  CONSTRAINT drink_PK PRIMARY KEY(drink_id);
--------------------------------------------------------
ALTER TABLE events
ADD
  CONSTRAINT event_PK PRIMARY KEY(event_id);
--------------------------------------------------------
ALTER TABLE foods
ADD
  CONSTRAINT food_PK PRIMARY KEY(food_id);
--------------------------------------------------------
ALTER TABLE lunches
ADD
  CONSTRAINT lunch_PK PRIMARY KEY(lunch_id);
--------------------------------------------------------
ALTER TABLE orders
ADD
  CONSTRAINT order_PK PRIMARY KEY(order_id);
--------------------------------------------------------
ALTER TABLE reservations
ADD
  CONSTRAINT reservation_PK PRIMARY KEY(reservation_id);
--------------------------------------------------------
ALTER TABLE restaurant_tables
ADD
  CONSTRAINT restaurant_table_PK PRIMARY KEY(table_id);
--------------------------------------------------------
ALTER TABLE personnel
ADD
  CONSTRAINT personnel_PK PRIMARY KEY(personnel_id);
--------------------------------------------------------
ALTER TABLE shifts
ADD
  CONSTRAINT shift_PK PRIMARY KEY(shift_id);
--------------------------------------------------------
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_PK PRIMARY KEY(order_row_id);
--------------------------------------------------------
  -- 2. set all foreign keys in the tables.
  --------------------------------------------------------
ALTER TABLE orders
ADD
  CONSTRAINT order_restaurant_table_FK FOREIGN KEY(table_id) REFERENCES restaurant_tables(table_id);
-- --------------------------------------------------------
ALTER TABLE shifts
ADD
  CONSTRAINT shift_personnel_FK FOREIGN KEY(personnel_id) REFERENCES personnel(personnel_id);
--------------------------------------------------------
ALTER TABLE reservations
ADD
  CONSTRAINT reservation_restaurant_table_FK FOREIGN KEY (table_id) REFERENCES restaurant_tables(table_id);
--------------------------------------------------------------------
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_order_FK FOREIGN KEY(order_id) REFERENCES orders(order_id);
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_food_FK FOREIGN KEY(food_id) REFERENCES foods(food_id);
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_drink_FK FOREIGN KEY(drink_id) REFERENCES drinks(drink_id);

--------------------------------------------------------------------
-- Insert values into table drinks
--------------------------------------------------------------------
INSERT INTO restaurant_tables (
    table_id,
    table_total_seats,
    table_available_seats,
    table_status
  )
VALUES
  (1, 4, 4, 'vacant'),
  (2, 4, 4, 'reserved'),
  (3, 4, 4, 'vacant'),
  (4, 4, 4, 'served'),
  (5, 4, 4, 'vacant'),
  (6, 4, 4, 'vacant'),
  (7, 4, 4, 'vacant');
--------------------------------------------------------------------
  -- Insert values into table drinks
  --------------------------------------------------------------------
INSERT INTO drinks (
    drink_name,
    drink_type,
    drink_category,
    drink_price
  )
VALUES
  ('Carlsberg', 'flaska', 'alkohol', 85),
  ('Veuve Clicquot', 'glas', 'alkohol', 100),
  ('Veuve Clicquot', 'flaska', 'alkohol', 895),
  ('Husets vita', 'glas', 'alkohol', 85),
  ('Husets rhode', 'glas', 'alkohol', 85),
  ('Läsk', 'flaska', 'alkoholfritt', 25),
  ('Te', 'kopp', 'kaffe', 30),
  ('Cognac', '6cl', 'sprit', 115);
--------------------------------------------------------------------
  -- Insert values into table events
  --------------------------------------------------------------------
-- ALTER TABLE ADMINISTRATOR.EVENTS ADD EVENT_DESCRIPTION VARCHAR(100);
-- ALTER TABLE ADMINISTRATOR.EVENTS ADD EVENT_PRICE INTEGER DEFAULT 0 NOT NULL;
-- ALTER TABLE ADMINISTRATOR.EVENTS ADD EVENT_TIME CHAR(5);
-- ALTER TABLE ADMINISTRATOR.EVENTS ADD EVENT_IMAGE VARCHAR(100);

INSERT INTO events (event_name, event_date)
VALUES
  ('Co-Pilots', '2020-03-24'),
  ('Lärarseminarium', '2020-03-27'),
  ('Johansson svensexa', '2020-03-27');
--------------------------------------------------------------------
  -- Insert values into table foods
  --------------------------------------------------------------------
INSERT INTO foods (food_name, food_price, food_category)
VALUES
  ('Wallenbergare', 185, 'main'),
  ('Torskrygg', 225, 'main'),
  ('Daal', 125, 'main'),
  (
    'Glass med varma hjortron',
    85,
    'dessert'
  ),
  ('Moules frites', 200, 'main'),
  ('Moules frites', 100, 'starter'),
  ('Toast Skagen', 100, 'starter');
--------------------------------------------------------------------
  -- Insert values into table lunches
  --------------------------------------------------------------------
INSERT INTO lunches (lunch_name, lunch_week, lunch_day)
VALUES
  ('Torskfile', 7, 1),
  ('Pannkakor med sylt', 7, 1),
  ('Biff och potatis', 7, 2),
  ('Stekt strömming', 7, 2),
  ('Potatispalt', 7, 3),
  ('Köttbullar och lök', 7, 3),
  ('Lax med ris', 7, 4),
  ('Raggmunk med fläsk', 7, 4),
  ('Linsgryta', 7, 5),
  ('Lammstek', 7, 5),
  ('Bruna bönor och fläsk', 7, 3);
--------------------------------------------------------------------
  -- Insert values into table orders
  --------------------------------------------------------------------
INSERT INTO orders (table_id, order_time)
VALUES
  (1, '2020-03-19 13:50:00'),
  (2, '2020-03-19 13:50:00'),
  (3, '2020-03-19 13:50:00'),
  (4, '2020-03-19 13:50:00');
--------------------------------------------------------------------
  -- Insert values into table order_changes
  --------------------------------------------------------------------
INSERT INTO order_rows (order_id, food_id, drink_id, order_change)
VALUES
  (1, 1, 1, 'Ingen gluten'),
  (1, 1, 1, NULL),
  (2, 3, NULL, 'Bara sås'),
  (2, NULL, 3, NULL),
  (3, 1, 1, NULL),
  (4, 2, 5, 'Laktorfri');
--------------------------------------------------------------------
  -- Insert values into table personnel
  --------------------------------------------------------------------
INSERT INTO personnel (
    personnel_name,
    personnel_phone,
    personnel_type
  )
VALUES
  (
    'Anton Karlsson',
    '070-5095050',
    'kitchen'
  ),
  (
    'Cecilia Andersson',
    '070-5095055',
    'kitchen'
  ),
  (
    'Ylva Berglind',
    '070-5095052',
    'restaurant'
  ),
  (
    'Markus Lindberg',
    '070-3509090',
    'restaurant'
  );
--------------------------------------------------------------------
  -- Insert values into table reservations
  --------------------------------------------------------------------
INSERT INTO reservations (
    reservation_name,
    reservation_date,
    reservation_phone,
    table_id
  )
VALUES
  ('Johansson', '2020-03-19', '060-123456', 1),
  ('Arvid', '2020-03-19', '070-1234567', 2),
  (NULL, '2020-03-19', '070-2222222', 3),
  ('Svensson', '2020-03-20', '073-5323237', 1);
--------------------------------------------------------------------
  -- Insert values into table shifts
  --------------------------------------------------------------------
INSERT INTO shifts (shift_date, shift_type, personnel_id)
VALUES
  ('2020-03-19', 'day', 1),
  ('2020-03-19', 'day', 2),
  ('2020-03-19', 'evening', 3),
  ('2020-03-19', 'evening', 4),
  ('2020-03-20', 'day', 1),
  ('2020-03-20', 'day', 2);
