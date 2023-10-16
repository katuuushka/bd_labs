/* выбрать имена объектов с дешевой качественной стоимостью*/
use cd;
select * from facilities where monthlymaintenance < 100;
/* выбрать имена объектов с дорогой качественной стоимостью*/
use cd;
select * from facilities where monthlymaintenance >= 100;