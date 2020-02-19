CREATE TABLE IF NOT EXISTS events (
  event_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  event_name VARCHAR(100),
  event_date VARCHAR(10)
);
INSERT INTO events (event_name, event_date)
VALUES
  ('Co-Pilots', '2020-03-24'),
  ('Lärarseminarium', '2020-03-27');
