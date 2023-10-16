/*объединить имена членов и названия объектов в одну таблицу*/
use cd;
select firstname from members
union
select facility from facilities;