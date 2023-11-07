/*Выберите лист в рамке (timestamp) покупки времени объектов членом клуба'David Farrell'*/
USE cd;
SELECT starttime FROM bookings
JOIN members ON bookings.memid = members.memid
WHERE members.firstname = 'David' AND members.surname = 'Farrell'