CREATE TABLE orders (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    employee_id varchar (4) NOT NULL,
    amount decimal(7,2),
    order_status varchar(10)    
);

INSERT INTO
    orders(
        employee_id,
        amount,
        order_status
    )
VALUES
    ('e03', 15.00,'OPEN'),
    ('e01', 25.50,'OPEN'),
    ('e05', 100.70,'CLOSED'),
    ('e02', 22.18,'OPEN'),
    ('e04', 9.50,'CANCELLED');


SELECT
    employee_id, amount,
    CASE 
WHEN
    order_status = "OPEN"
        THEN "Order is in open state"
WHEN
    order_status = "CLOSED"
        THEN "Order is closed"
WHEN
    order_status = "CANCELLED"
        THEN "Order is cancelled"
END AS "order_status"
FROM orders;