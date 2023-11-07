/*Выберите теннисные корты, заброниррованные пользователями на 19 сентября 2012 года*/
USE cd;
SELECT facility FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
WHERE facilities.facility LIKE '%Tennis Court%' AND bookings.starttime LIKE '%2012-09-19%'