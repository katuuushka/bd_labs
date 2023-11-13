/* количество рекомендаций для каждого члена клуба, данных этим членом клуба, искючив членов, которые не давали 
рекомендаций. */
USE cd;
SELECT m.memid AS MemberID,
m.firstname AS firstname,
m.surname AS lastname,
COUNT(m2.memid) AS r_count
FROM members m
JOIN members m2 ON m.memid = m2.recommendedby
WHERE m.recommendedby IS NOT NULL
GROUP BY m.memid, m.firstname, m.surname;
