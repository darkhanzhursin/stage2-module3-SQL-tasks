delete from STUDENT where id in
                            (select STUDENT_ID from MARK where SUBJECT_ID in
                            (select SUBJECT.ID from SUBJECT where GRADE >= 4));
delete from MARK where STUDENT_ID in
                       (select STUDENT_ID from MARK where SUBJECT_ID in
                                                          (select SUBJECT.ID from SUBJECT where GRADE >= 4));
delete from STUDENT where ID in (select STUDENT_ID from MARK where MARK = 3);
delete from PAYMENTTYPE where NAME like 'DAILY';
delete from PAYMENT where TYPE_ID = 1;
delete from MARK where MARK < 7;