/* выбрать платные объекты */
use cd;
select * from facilities where guestcost > 0.02*monthlymaintenance;