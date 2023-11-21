/*Классифицируйте объекты на группы одинакового размера (высокие, средние и низкие в зависимости от их доходов). 
Упорядочите по классификации и названию объекта.
Примечание: используйте функцию деления на группы ntile.*/
USE cd;
SELECT facility, 
CASE 
  WHEN NTILE(3) OVER (ORDER BY revenue) = 1 THEN 'Высокий доход'
  WHEN NTILE(3) OVER (ORDER BY revenue) = 2 THEN 'Средний доход'
  WHEN NTILE(3) OVER (ORDER BY revenue) = 3 THEN 'Низкий доход'
END AS incomegroup
FROM (
  SELECT f.facility, SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) AS revenue
  FROM facilities f
  INNER JOIN bookings b ON f.facid = b.facid
  GROUP BY f.facility
) AS subquery
ORDER BY incomegroup, facility;