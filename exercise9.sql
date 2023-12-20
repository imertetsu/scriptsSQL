-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the column with unique values for this table.
-- This table contains information about the temperature on a certain day.
 

-- Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

-- The result format is in the following example.

SELECT
    w1.id AS Id
FROM
    Weather w1
JOIN
    Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
              AND w1.temperature > w2.temperature;

SELECT
    id AS Weather_Id
FROM
    Weather w1
WHERE
    temperature > (
        SELECT
            temperature
        FROM
            Weather w2
        WHERE
            w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
    );
