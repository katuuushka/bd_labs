/* выбрать 10 фамилий членов клуба, отсортированных по алфавиту*/
use cd;
select distinct surname from members order by surname limit 10;