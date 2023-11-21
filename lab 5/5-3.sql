/* количество рекомендаций для каждого члена клуба, данных этим членом клуба, искючив членов, которые не давали 
рекомендаций. */
USE cd;
SELECT
    mem.memid AS MemberID,
    mem.firstname AS firstname,
    mem.surname AS lastname,
    COUNT(mem2.memid) AS rec_count
FROM members mem
JOIN members mem2 ON mem.memid = mem2.recommendedby
GROUP BY mem.memid, mem.firstname, mem.surname;
