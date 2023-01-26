ALTER TABLE wordcollection AUTO_INCREMENT = 1;
ALTER TABLE student AUTO_INCREMENT = 1;
ALTER TABLE carrot_table AUTO_INCREMENT = 1;
ALTER TABLE teacher AUTO_INCREMENT = 1;
TRUNCATE wordcollection;
alter table carrot_table drop primary key;
alter table student add student_school varchar(20) not null;
delete from carrot_table;
select * from carrot_table;
alter table carrot_table add student_id bigint;
drop table carrot_table;
select * from student;
select * from admin_table;
select * from student where student_parentnumber regexp ('010-5555-5555'|'010-2222-2222');
insert into student values(1,'asdf','asdf','010-2866-8428','010-2866-8428','중1','신곡중','시농');
insert into teacher values(1,'asd','asd','김똥','010-1234-1234','o');
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
   select * from carrot_table
   ALTER TABLE updator AUTO_INCREMENT = 1; 
   drop table wordgugudan;
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
   drop table student;
   drop table carrot_table;
   delete from carrot_table;
alter table student add name varchar(20) not null;
 SET foreign_key_checks = 1;