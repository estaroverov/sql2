CREATE TABLE sales (
    id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    order_date date,
    count_product int
);

INSERT INTO
    sales(
        order_date,
        count_product
    )
VALUES
    ('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);

SELECT
    id, 
    CASE 
WHEN
    count_product < 100
        THEN "Маленький заказ"
WHEN
    count_product between 100 AND 300
        THEN "Средний заказ"
WHEN
    count_product > 300
        THEN "Большой заказ"
END AS "Тип заказа"
FROM sales;