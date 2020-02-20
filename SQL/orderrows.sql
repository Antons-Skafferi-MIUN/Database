CREATE TABLE IF NOT EXISTS orderrows(
        orderrow_id INTEGER NOT NULL AUTO_INCREMENT,
        order_id INTEGER NOT NULL,
        PRIMARY KEY (orderrow_id)
);
