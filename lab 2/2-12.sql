/*Найдите дату последней регистрации члена клуба*/
USE cd;
SELECT max(joindate) AS 'last registration' FROM members;