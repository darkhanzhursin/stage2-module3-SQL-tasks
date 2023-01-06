select * from MARK where MARK > 6 ORDER BY MARK DESC;
select * from PAYMENT where AMOUNT < 300 ORDER BY AMOUNT ASC;
select * from PAYMENTTYPE order by name asc;
select * from STUDENT order by NAME desc;
select * from STUDENT where ID IN (select STUDENT_ID from PAYMENT where AMOUNT > 1000) order by BIRTHDAY asc;
