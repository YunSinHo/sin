alter table carrot_table drop primary key;
alter table student add student_school varchar(20) not null;
delete from carrot_table;
select * from carrot_table;
drop table carrot_table;
select * from student;
select * from admin_table;

insert into carrot_table(carrot_class, carrot_seq,
    carrot_name,
    carrot_date,
    carrot_books ,
    carrot_memorization ,
    carrot_speech ,
    carrot_read ,
    carrot_trans ,
    carrot_solving,
    carrot_listen ,
    carrot_getting,
    carrot_showdown,
    carrot_report,
    carrot_perfection,
    carrot_result )
   values ('1ㅇ',1,'2333이','3ㅇ','4ㅇ','5ㅇ','6ㅇ','7ㅇ','ㅇ8','ㅇ9','ㅇ0','ㅇ1','ㅇ2','ㅇ3','ㅇ4','ㅇ5');
   
   select * from carrot_table;
   insert into carrot_table(carrot_class,
    carrot_name,
    carrot_date,
    carrot_books,
    carrot_memorization,
    carrot_speech,
    carrot_read,
    carrot_trans ,
    carrot_solving,
    carrot_listen ,
    carrot_getting,
    carrot_showdown,
    carrot_report,
    carrot_perfection,
    carrot_result )
   values ('1ㅇ','2333이','3ㅇ','4ㅇ','5ㅇ','6ㅇ','7ㅇ','ㅇ8','ㅇ9','ㅇ0','ㅇ1','ㅇ2','ㅇ3','ㅇ4','ㅇ5');
   select * from admin_table;
   update admin_table set admin_access ='yes' where admin_id='관리';
   update admin_table set admin_access ='yes', admin_tier ='super' where admin_id='학원장';
   update admin_table set admin_access ='yes', admin_tier ='teacher' where admin_id='선생';
   <-- 학생 업데이트-->
   update student set student_school='불암중' where student_name='윤신호';
   update student set student_school='불암중' where student_name='홍길동';
   update student set student_school='불암중' where student_name='이대호';
   update student set student_school='불암중' where student_name='박지성';
   update student set student_school='불암중' where student_name='손흥민';
   <--학생 insert -->
   
   insert into student(student_name,student_number ,student_parentnumber ,student_class ,student_grade)
   values('윤신호','010-2866-8428','010-1234-1234','A','중3');
   insert into student(student_name,student_number ,student_parentnumber ,student_class ,student_grade)
   values('홍길동','010-1111-1111','010-2222-2222','B','중1');
   insert into student(student_name,student_number ,student_parentnumber ,student_class ,student_grade)
   values('이대호','010-3333-3333','010-4444-4444','B','중3');
   insert into student(student_name,student_number ,student_parentnumber ,student_class ,student_grade)
   values('박지성','010-5555-8428','010-5555-5555','A','중2');
   insert into student(student_name,student_number ,student_parentnumber ,student_class ,student_grade)
   values('손흥민','010-6666-8428','010-6666-6666','C','중3');
   delete from updator
   insert into updator(updator_name) values(' ');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   insert into updator(updator_name) values('');
   select * from updator
   ALTER TABLE updator AUTO_INCREMENT = 1; 
   insert into wordgugudan values('1단',1);
   insert into wordgugudan values('2단',2);
   insert into wordgugudan values('3단',3);
   insert into wordgugudan values('4단',4);
   insert into wordgugudan values('5단',5);
   insert into wordgugudan values('6단',6);
   insert into wordgugudan values('7단',7);
   insert into wordgugudan values('8단',8);
   insert into wordgugudan values('9단',9);
   select * from wordgugudan
   select * from wordcollection where word_difficulty=2  order by word_seq desc limit 1;
   select count(*) from wordcollection where word_difficulty=2
   select * from wordcollection where word_name='big'
   select word_seq from wordcollection where word_difficulty =2 order by word_seq desc limit 1;