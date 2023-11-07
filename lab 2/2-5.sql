/*Выбрать объекты, которые платны для членов клуба, но стоимость использования не превышает 1/50 от стоимость месячного обслуживания (monthlymaintenance)*/
USE cd;
SELECT facility FROM facilities WHERE membercost <= (monthlymaintenance/50) AND membercost !=0;