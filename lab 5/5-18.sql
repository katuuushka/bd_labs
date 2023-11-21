/* Скользящее среднее значение общего дохода для каждого дня 2012 года за предыдущие 15 дней. */
USE cd;
SELECT DATE(bookings.starttime) AS date, AVG(facilities.membercost + facilities.guestcost) AS rolling_avg_income
FROM bookings
JOIN facilities ON bookings.facid = facilities.facid
WHERE DATE(bookings.starttime) BETWEEN '2012-08-01' AND '2012-08-31'
GROUP BY DATE(bookings.starttime)
ORDER BY DATE(bookings.starttime);