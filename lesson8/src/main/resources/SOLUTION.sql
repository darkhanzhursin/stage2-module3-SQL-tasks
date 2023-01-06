select MAX(BIRTHDAY) as youngest from STUDENT;
select MIN(PAYMENT_DATE) from PAYMENT;
SELECT AVG(MARK) from MARK where SUBJECT_ID=(select id from SUBJECT where NAME like 'Math');
select MIN(AMOUNT) from PAYMENT where TYPE_ID=(select id from PAYMENTTYPE where NAME like 'WEEKLY');
