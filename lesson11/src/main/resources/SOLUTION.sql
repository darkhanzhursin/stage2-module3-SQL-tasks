update SUBJECT
set GRADE = 5 where NAME like 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';

update STUDENT
set GROUPNUMBER = 8 where NAME like 'Tremaine Worvill';

update PAYMENT
set AMOUNT = 500, STUDENT_ID = 2 where TYPE_ID = 2 and PAYMENT_DATE > '2021-01-01';

update MARK
set MARK = 2 where SUBJECT_ID = 315;
