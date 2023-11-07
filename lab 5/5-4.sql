/* количество аренд каждого из объектов клуба */
USE cd;
SELECT facid, COUNT(*) FROM bookings GROUP BY facid;