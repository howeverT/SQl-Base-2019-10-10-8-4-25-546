CREATE TABLE student
( id varchar2(20) not null,
  name varchar2(50) not null,
  age NUMERIC(10) not null,
  sex varchar2(10) not null,
  CONSTRAINT student_pk PRIMARY KEY (id)
);

INSERT INTO student(id,name,age,sex) VALUES ('001','zhangsan',18,'male');
INSERT INTO student(id,name,age,sex) VALUES ('002','lisi',20,'female');

CREATE TABLE subject
( id varchar2(20) not null,
  subject varchar2(50) not null,
  teacher varchar2(50) not null,
  description varchar2(100),
  CONSTRAINT subject_pk PRIMARY KEY (id)
);

INSERT INTO subject(id,subject,teacher,description) VALUES ('1001','Chinese','Mr. Wang','the exam is easy');
INSERT INTO subject(id,subject,teacher,description) VALUES ('1002','math','Miss Liu','the exam is difficult');

CREATE TABLE score
( id int not null,
  student_id varchar2(20) not null,
  subject_id varchar2(20) not null,
  score float default 0,
  CONSTRAINT score_pk PRIMARY KEY (id),
  CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id),
  CONSTRAINT fk_subject FOREIGN KEY (subject_id) REFERENCES subject(id)
);

INSERT INTO score(id,student_id,subject_id,score) VALUES (1,'001','1001',80);
INSERT INTO score(id,student_id,subject_id,score) VALUES (2,'002','1002',60);
INSERT INTO score(id,student_id,subject_id,score) VALUES (3,'001','1001',70);
INSERT INTO score(id,student_id,subject_id,score) VALUES (4,'002','1002',60.5);