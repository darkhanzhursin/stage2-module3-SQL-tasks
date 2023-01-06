select * from Student where ID in (select STUDENT_ID from MARK group by STUDENT_ID HAVING AVG(MARK) > 8);
select id, NAME from STUDENT where id in (select STUDENT_ID from MARK group by STUDENT_ID having min(MARK) > 7);
select id, NAME from STUDENT where id in
                                   (
                                       select STUDENT_ID from PAYMENT
                                       where PAYMENT_DATE between '2019-01-01' and '2019-12-31'
                                       group by STUDENT_ID
                                       HAVING COUNT(PAYMENT_DATE) > 2
                                       );

