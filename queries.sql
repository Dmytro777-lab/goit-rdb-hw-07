
SELECT
    id,
    `date`,
    YEAR(`date`) AS order_year,
    MONTH(`date`) AS order_month,
    DAY(`date`) AS order_day
FROM mydb.orders
ORDER BY id;


SELECT
    id,
    `date`,
    DATE_ADD(`date`, INTERVAL 1 DAY) AS next_day
FROM mydb.orders
ORDER BY id;


SELECT
    id,
    `date`,
    UNIX_TIMESTAMP(`date`) AS unix_timestamp_seconds
FROM mydb.orders
ORDER BY id;


SELECT COUNT(*) AS orders_count
FROM mydb.orders
WHERE CAST(`date` AS DATETIME) BETWEEN '1996-07-10 00:00:00'
                                  AND '1996-10-08 00:00:00';


SELECT
    id,
    `date`,
    JSON_OBJECT('id', id, 'date', `date`) AS order_json
FROM mydb.orders
ORDER BY id;
