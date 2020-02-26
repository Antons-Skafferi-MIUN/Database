-- This sql file modifies the tables in the database.
--------------------------------------------------------
-- 1. set all primary keys.
--------------------------------------------------------
--------------------------------------------------------
ALTER TABLE drinks
ADD
  CONSTRAINT drink_PK PRIMARY KEY(drink_id);
ALTER TABLE drinks
MODIFY
  COLUMN drink_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE events
ADD
  CONSTRAINT event_PK PRIMARY KEY(event_id);
ALTER TABLE events
MODIFY
  COLUMN event_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE foods
ADD
  CONSTRAINT food_PK PRIMARY KEY(food_id);
ALTER TABLE foods
MODIFY
  COLUMN food_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE lunches
ADD
  CONSTRAINT lunch_PK PRIMARY KEY(lunch_id);
ALTER TABLE lunches
MODIFY
  COLUMN lunch_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE orders
ADD
  CONSTRAINT order_PK PRIMARY KEY(order_id);
ALTER TABLE orders
MODIFY
  COLUMN order_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE reservations
ADD
  CONSTRAINT reservation_PK PRIMARY KEY(reservation_id);
ALTER TABLE reservations
MODIFY
  COLUMN reservation_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE restaurant_tables
ADD
  CONSTRAINT restaurant_table_PK PRIMARY KEY(table_id);
--------------------------------------------------------
ALTER TABLE order_changes
ADD
  CONSTRAINT order_change_PK PRIMARY KEY(order_change_id);
ALTER TABLE order_changes
MODIFY
  COLUMN order_change_id INT AUTO_INCREMENT;
--------------------------------------------------------
ALTER TABLE personnel
ADD
  CONSTRAINT personnel_PK PRIMARY KEY(personnel_id);
--------------------------------------------------------
ALTER TABLE shifts
ADD
  CONSTRAINT shift_PK PRIMARY KEY(shift_id);
ALTER TABLE shifts
MODIFY
  COLUMN shift_id INT AUTO_INCREMENT;
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
  CONSTRAINT order_row_order_FK FOREIGN KEY(order_id) REFERENCES orders(order_id),
  CONSTRAINT order_row_food_FK FOREIGN KEY(food_id) REFERENCES foods(food_id),
  CONSTRAINT order_row_drink_FK FOREIGN KEY(drink_id) REFERENCES drinks(drink_id),
  CONSTRAINT order_row_order_change_FK FOREIGN KEY(order_change_id) REFERENCES order_changes(order_change_id);
