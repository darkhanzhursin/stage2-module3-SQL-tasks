INSERT INTO student (name, birthday, groupnumber)
VALUES ('John', '2000-01-01', 1),
       ('Chris', '2000-02-02', 1),
       ('Carl', '2000-02-03', 1),
       ('Oliver', '2000-01-14', 2),
       ('James', '2000-03-22', 2),
       ('Lucas', '1999-12-02', 2),
       ('Henry', '2001-01-11', 2),
       ('Jacob', '2002-02-15', 3),
       ('Logan', '2001-11-01', 3),
       ('Darkhan', '1995-10-06', 5),
       ('Liya', '2002-08-29', 4);

INSERT INTO subject (name, grade)
VALUES ('Art', 1),
       ('Music', 1),
       ('Geography', 2),
       ('History', 2),
       ('PE', 3),
       ('Math', 3),
       ('Science', 4),
       ('IT', 4),
       ('Algebra', 5),
       ('Physics', 5);

INSERT INTO paymenttype (name)
VALUES ('DAILY'),('WEEKLY'),('MONTHLY');

INSERT INTO payment (type_id, student_id, amount, payment_date)
VALUES (SELECT id from PAYMENTTYPE where NAME='WEEKLY', SELECT id from STUDENT where NAME='John', 2.3213, '2012-09-17 18:47:52.69'),
       (SELECT  id from PAYMENTTYPE where NAME='MONTHLY', SELECT id from STUDENT where NAME='Oliver', 3.213, '2012-09-17 18:47:52.69'),
       (SELECT id from PAYMENTTYPE where NAME='WEEKLY', SELECT id from STUDENT where NAME='Henry', 4.12312, '2012-09-17 18:47:52.69'),
       (SELECT id from PAYMENTTYPE where NAME='DAILY', SELECT id from STUDENT where NAME='James', 0.321, '2012-09-17 18:47:52.69'),
       (SELECT id from PAYMENTTYPE where NAME='DAILY', SELECT id from STUDENT where NAME='Lucas', 0.521, '2012-09-17 18:47:52.69'),
       (SELECT id from PAYMENTTYPE where NAME='MONTHLY', SELECT id from STUDENT where NAME='Carl', 5.321, '2012-09-17 18:47:52.69');

INSERT INTO mark (mark, student_id, subject_id)
values (8, select id from student where name='Chris', select id from subject where name='Art'),
       (5, select id from STUDENT where NAME='Oliver', select id from SUBJECT where NAME='History'),
       (9, select id from STUDENT where NAME='James', select id from SUBJECT where NAME='Geography'),
       (4, select id from STUDENT where NAME='Jacob', select id from SUBJECT where NAME='Math'),
       (9, select id from STUDENT where NAME='Logan', select id from SUBJECT where NAME='PE'),
       (1, select id from STUDENT where NAME='Carl', select id from SUBJECT where NAME='Physics');


