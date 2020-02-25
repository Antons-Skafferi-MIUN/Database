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
INSERT INTO events (event_name, event_date)
VALUES
  ('Co-Pilots', '2020-03-24'),
  ('Lärarseminarium', '2020-03-27');
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
INSERT INTO orders (order_price)
VALUES
  (500),
  (220);
--------------------------------------------------------------------
  -- Insert values into table personnel
  --------------------------------------------------------------------
INSERT INTO personnel (
    personnel_id,
    personnel_name,
    personnel_phone,
    personnel_type
  )
VALUES
  (
    7501011234,
    'Anton Karlsson',
    '070-5095050',
    'kök'
  ),
  (
    8501011234,
    'Cecilia Andersson',
    '070-5095055',
    'kök'
  ),
  (
    8201011234,
    'Ylva Berglind',
    '070-5095052',
    'restaurang'
  ),
  (
    7502021234,
    'Markus Lindberg',
    '070-3509090',
    'restaurang'
  );