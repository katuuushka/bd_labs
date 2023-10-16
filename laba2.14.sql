/*самый дорогой и самый дешевый объекты*/
use cd;
select * from facilities where guestcost = 5
union
select * from facilities where guestcost = 80;