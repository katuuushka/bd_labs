/* количество рекомендаций для каждого члена клуба, 
данных этим членом клуба, искючив членов, которые не давали 
рекомендаций.*/
USE cd;
SELECT recommendedby, COUNT(*) FROM members WHERE recommendedby IS NOT NULL GROUP BY recommendedby;