/*  список общего количества мест, забронированных на 
один объект в месяц в 2012 году*/
USE cd;
SELECT 	IFNULL(derived_table.facid, 'Total') as facid,
		IFNULL(derived_table.month, 'Total') as month,
        SUM(derived_table.slots) AS 'Количество забронированных мест'
FROM 
(SELECT 
        f.facid AS facid,
        MONTH(b.starttime) AS month,
        SUM(b.slots) as slots
    FROM
        facilities f
    INNER JOIN bookings b ON f.facid = b.facid
    WHERE
        YEAR(b.starttime) = 2012
    GROUP BY facid, month, slots) AS derived_table
GROUP BY facid, month WITH ROLLUP;
