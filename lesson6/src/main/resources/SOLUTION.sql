select * from PAYMENT where type_id=(select id from PAYMENTTYPE where NAME like 'MONTHLY');
select * from MARK where SUBJECT_ID=(select id from SUBJECT where NAME like 'Art');
select * from STUDENT where id IN (select STUDENT_ID from PAYMENT where TYPE_ID = ((select id from PAYMENTTYPE where NAME like 'WEEKLY')));
select * from STUDENT where id IN (select STUDENT_ID from MARK where SUBJECT_ID = (select id from SUBJECT where NAME like 'Math'));