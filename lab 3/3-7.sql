/* Выберите список всех членгов, включая человека, который их рекомендовал (если таковой имеется), без использования объединений.
Исключите в списке дубликаты, упорядлчите лист по ФИО (== имя + фамилия)*/
USE cd;
SELECT CONCAT(mem.firstname,' ',mem.surname) AS membername,
(SELECT CONCAT(rec.firstname,' ',rec.surname) FROM members rec WHERE mem.recommendedby=rec.memid) AS recname 
FROM members mem
WHERE mem.memid!=0
ORDER BY membername;
