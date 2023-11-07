 /* Выберите список бронирований на 14 сентября 2012г., стоимость которых более 30. 
 Включите в выходные данные название заведения, имя участника, отформатированное как одиночное столбец и стоимость. 
 Упорядочивайте по убыванию стоимости и не используйте подзапросы.*/
 USE cd;
 SELECT DISTINCT concat(f.facility, '', m.firstname) AS FAcilityAndName,
CASE
WHEN b.memid = 0 THEN f.guestcost * b.slots
ELSE f.membercost * b.slots
END AS cost 
FROM bookings b
JOIN  facilities f ON b.facid = f.facid 
JOIN members m ON b.memid = m.memid
WHERE DATE(b.starttime) = '2012-09-14' AND
(CASE
WHEN b.memid = 0 THEN f.guestcost * b.slots
ELSE f.membercost * b.slots
END) > 30
ORDER BY cost DESC;