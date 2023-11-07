/* количество аренд каждого из объектов клуба за 
сентябрь 2012 года */
USE cd;
SELECT facid, COUNT(*) FROM bookings GROUP BY facid; 
WHERE joindate BETWEEN '2012-09-01' AND '2012-09-30'GROUP BY facid;