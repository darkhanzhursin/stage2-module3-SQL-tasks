Select * from PAYMENT where type_id=4;
select * from MARK where SUBJECT_ID=92;
select * from STUDENT where id IN (select STUDENT_ID from PAYMENT where TYPE_ID = 4);
select * from STUDENT where id IN (select STUDENT_ID from MARK where SUBJECT_ID = 104);