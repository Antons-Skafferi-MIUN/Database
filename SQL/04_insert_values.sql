/*--------------------------------------------------------------------*/
-- Insert values into table drinks
/*--------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------*/
  -- Insert values into table drinks
/*--------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------*/
  -- Insert values into table events
/*--------------------------------------------------------------------*/
INSERT INTO events (event_name, event_date)
VALUES
  ('Co-Pilots', '2020-03-24'),
  ('Lärarseminarium', '2020-03-27'),
  ('Johansson svensexa', '2020-03-27');
/*--------------------------------------------------------------------*/
  -- Insert values into table foods
/*--------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------*/
  -- Insert values into table lunches
/*--------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------*/
  -- Insert values into table orders
/*--------------------------------------------------------------------*/
INSERT INTO orders (table_id)
VALUES
  (1),
  (2),
  (3),
  (4);
/*--------------------------------------------------------------------*/
  -- Insert values into table order_changes
/*--------------------------------------------------------------------*/
INSERT INTO order_rows (order_id, food_id, drink_id, order_change)
VALUES
  (1, 1, 1, "Ingen gluten"),
  (1, 1, 1, NULL),
  (2, 3, NULL, "Bara sås"),
  (2, NULL, 3, NULL),
  (3, 1, 1, NULL),
  (4, 2, 5, "Laktorfri");
/*--------------------------------------------------------------------*/
  -- Insert values into table personnel
/*--------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------*/
  -- Insert values into table reservations
/*--------------------------------------------------------------------*/
INSERT INTO reservations (
    reservation_name,
    reservation_date,
    reservation_phone,
    table_id
  )
VALUES
  ("Johansson", "2020-03-19", "060-123456", 1),
  ("Arvid", "2020-03-19", "070-1234567", 2),
  (NULL, "2020-03-19", "070-2222222", 3),
  ("Svensson", "2020-03-20", "073-5323237", 1);
/*--------------------------------------------------------------------*/
  -- Insert values into table shifts
/*--------------------------------------------------------------------*/
INSERT INTO shifts (shift_date, shift_type, personnel_id)
VALUES
  ("2020-03-19", "day", 1),
  ("2020-03-19", "day", 2),
  ("2020-03-19", "evening", 3),
  ("2020-03-19", "evening", 4),
  ("2020-03-20", "day", 1),
  ("2020-03-20", "day", 2);
