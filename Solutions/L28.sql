SELECT user_id, MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id;

-------------------------------------

select user_id, max(time_stamp) as last_stamp
from Logins
where time_stamp between '2020-01-01 00:00:00.00000' and '2020-12-31 23:59:59.99999'
group by user_id

