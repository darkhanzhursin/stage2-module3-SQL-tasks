select * from SUBJECT where id in
                            (select SUBJECT_ID from MARK group by SUBJECT_ID having AVG(MARK) in
                            (select max("average marks") from
                            (select SUBJECT_ID, AVG(MARK) as "average marks" from MARK group by SUBJECT_ID)));

select * from STUDENT where id in
                      (select STUDENT_ID from PAYMENT group by STUDENT_ID having AVG(AMOUNT) in
                      (select min("average payment") from
                      (select STUDENT_ID, AVG(AMOUNT) as "average payment" from PAYMENT group by STUDENT_ID)));



