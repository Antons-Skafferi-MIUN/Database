-- This is the sql syntax for javaDB
-- Declaring foreign keys 
-- primary keys is already set from CREATE_TABLES.sql


ALTER TABLE orders
ADD
  CONSTRAINT order_restaurant_table_FK FOREIGN KEY(table_id) REFERENCES restaurant_tables(table_id);
-- --------------------------------------------------------
ALTER TABLE shifts
ADD
  CONSTRAINT shift_personnel_FK FOREIGN KEY(personnel_id) REFERENCES personnel(personnel_id);