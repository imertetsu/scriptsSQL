#Execercise 1:
--Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

-- Find the names of the customer that are not referred by the customer with id = 2.

-- Return the result table in any order.

-- The result format is in the following example.
SELECT c.name 
FROM Customer c
WHERE c.referee_id IS NULL OR c.referee_id != 2;

#Execercise 2:
-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
-- product_id is the primary key (column with unique values) for this table.
-- low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
-- recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

SELECT product_id 
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
