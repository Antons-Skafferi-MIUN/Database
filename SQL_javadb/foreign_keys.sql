-- This is the sql syntax for javaDB
-- Declaring foreign keys 
-- primary keys is already set from CREATE_TABLES.sql


ALTER TABLE orders
ADD
  CONSTRAINT order_restaurant_table_FK FOREIGN KEY(table_id) REFERENCES restaurant_tables(table_id);
/----------------------------------------------------------/
ALTER TABLE shifts
ADD
  CONSTRAINT shift_personnel_FK FOREIGN KEY(personnel_id) REFERENCES personnel(personnel_id);
/--------------------------------------------------------/
ALTER TABLE reservations
ADD
  CONSTRAINT reservation_restaurant_table_FK FOREIGN KEY (table_id) REFERENCES restaurant_tables(table_id);
/--------------------------------------------------------------------/
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_order_FK FOREIGN KEY(order_id) REFERENCES orders(order_id);
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_food_FK FOREIGN KEY(food_id) REFERENCES foods(food_id);
ALTER TABLE order_rows
ADD
  CONSTRAINT order_row_drink_FK FOREIGN KEY(drink_id) REFERENCES drinks(drink_id);
