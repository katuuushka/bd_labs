/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT
    facility
,   SUM(book.slots) as rent_count
,   DATE_FORMAT(book.starttime, '%y %m') as month
FROM cd.facilities as fac
JOIN cd.bookings as book ON book.facid = fac.facid
GROUP BY fac.facid, month;