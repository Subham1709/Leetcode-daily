# Write your MySQL query statement below
SELECT b.id
FROM Weather b
JOIN Weather a
  ON a.recordDate = DATE_SUB(b.recordDate, INTERVAL 1 DAY)
WHERE b.temperature > a.temperature;