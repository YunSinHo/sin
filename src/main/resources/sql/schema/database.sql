# 문장 해석
create table if not exists imsi_table
(
    imsi_seq     int not null auto_increment primary key,
    imsi_title   varchar(30),
    imsi_content varchar(3000)
);

create table if not exists updator
(
    carrot_seq   int auto_increment primary key,
    updator_name varchar(500)
);

create table if not exists grammartable
(
    grammar_seq           int           not null auto_increment primary key,
    grammar_title         varchar(50)   not null,
    grammar_category1     varchar(30)   not null,
    grammar_content1      varchar(3000) not null,
    grammar_category2     varchar(30)   null,
    grammar_content2      varchar(3000) null,
    grammar_viewmoretext1 varchar(300)  null,
    grammar_viewmoretext2 varchar(300)  null,
    grammar_viewmoretext3 varchar(300)  null,
    grammar_viewmoretext4 varchar(300)  null
);
#         독해
# select *
# from wordpdf;
#     단어구구단
# 안쓰는 테이블일수도
# create table if not exists wordpdf
# (
#     wpdf_seq    int auto_increment primary key,
#     wpdf_header varchar(10)  not null,
#     wpdf_name   varchar(50)  not null,
#     wpdf_trans  varchar(100) not null
# );

# 그래머 옆 단어
create table if not exists wordcollection
(
    word_seq        int auto_increment primary key,
    word_name       varchar(100) not null,
    word_trans      varchar(100) not null,
    word_difficulty int          not null,
    word_trans1     varchar(100) not null,
    word_trans2     varchar(100) not null,
    word_trans3     varchar(100) not null
);

create table if not exists wordgugudan
(
    gugudan_name  varchar(20),
    gugudan_level int(3)
);

#     영작
create table if not exists trans_table
(
    trans_seq        int           not null auto_increment primary key,
    trans_title      varchar(50)   not null,
    trans_category1  varchar(50)   not null,
    trans_category2  varchar(50)   not null,
    trans_category3  varchar(50)   not null,
    trans_category4  varchar(50)   not null,
    trans_category5  varchar(50)   not null,
    trans_category6  varchar(50)   not null,
    trans_content1   varchar(1000) not null,
    trans_content2   varchar(1000) not null,
    trans_content3   varchar(1000) not null,
    trans_translate1 varchar(1000) not null,
    trans_translate2 varchar(1000) not null,
    trans_translate3 varchar(1000) not null,
    primary key (trans_seq)
);

#     당근라이브러리
create table if not exists carrot_table
(
    carrot_seq          int auto_increment primary key,
    carrot_class        varchar(20),
    carrot_name         varchar(10) not null,
    carrot_date         varchar(20) not null,
    carrot_books        varchar(20),
    carrot_memorization varchar(20),
    carrot_speech       varchar(20),
    carrot_read         varchar(20),
    carrot_trans        varchar(20),
    carrot_solving      varchar(20),
    carrot_listen       varchar(20),
    carrot_getting      varchar(50),
    carrot_showdown     varchar(20),
    carrot_report       varchar(20),
    carrot_perfection   varchar(20),
    carrot_result       varchar(200),
    carrot_number       varchar(20) not null
);
# alter table student
#     modify student_number varchar(20);
create table if not exists student
(
    id            int auto_increment primary key,
    available     varchar(20) not null,
    user_id       varchar(20) not null,
    parentnumber  varchar(20) not null,
    number        varchar(20) not null,
    grade         varchar(20) not null,
    school        varchar(20) not null,
    password      varchar(20) not null,
    name          varchar(20) not null,
    join_date     datetime    not null,
    update_date   datetime    not null,
    student_class varchar(20) not null
);

# 그래머 옆 단어
create table if not exists wordcollection
(
    word_seq        int auto_increment primary key,
    word_name       varchar(100) not null,
    word_trans      varchar(100) not null,
    word_difficulty int          not null,
    word_trans1     varchar(100) not null,
    word_trans2     varchar(100) not null,
    word_trans3     varchar(100) not null
);

# 고교매칭 서비스
create table if not exists schoolmatchtest
(
    schoolmatch_seq            int auto_increment primary key,
    schoolmatch_name           varchar(20)  not null,
    schoolmatch_school         varchar(100) not null,
    schoolmatch_grade          varchar(10)  not null,
    schoolmatch_phone1         varchar(10)  not null,
    schoolmatch_phone2         varchar(10)  not null,
    schoolmatch_phone3         varchar(10)  not null,
    schoolmatch_parentphone1   varchar(10)  not null,
    schoolmatch_parentphone2   varchar(10)  not null,
    schoolmatch_parentphone3   varchar(10)  not null,
    schoolmatch_date           varchar(30)  not null,
    schoolmatch_agree          varchar(10)  not null,
    schoolmatch_buram          float        null,
    schoolmatch_sangmyung      float        null,
    schoolmatch_youngsin       float        null,
    schoolmatch_daejingirls    float        null,
    schoolmatch_yonghwa        float        null,
    schoolmatch_cheongwongirls float        null,
    schoolmatch_cheongwon      float        null,
    schoolmatch_daejin         float        null,
    schoolmatch_jaehyun        float        null,
    schoolmatch_sorabol        float        null,
    schoolmatch_prior1         float        not null,
    schoolmatch_prior2         float        not null,
    schoolmatch_prior3         float        not null,
    schoolmatch_prior4         float        not null,
    schoolmatch_prior5         float        not null,
    schoolmatch_tendency1      float        not null,
    schoolmatch_tendency2      float        not null,
    schoolmatch_tendency3      float        not null,
    schoolmatch_tendency4      float        not null,
    schoolmatch_tendency5      float        not null,
    schoolmatch_tendency6      float        not null
);

create table if not exists user_table
(
    user_seq          int auto_increment primary key,
    user_id           varchar(50) unique not null,
    user_password     varchar(50)        not null,
    user_name         varchar(20)        not null,
    user_phone1       varchar(10)        not null,
    user_phone2       varchar(10)        not null,
    user_phone3       varchar(10)        not null,
    user_parentphone1 varchar(10)        null,
    user_parentphone2 varchar(10)        null,
    user_parentphone3 varchar(10)        null,
    user_email        varchar(100)       null,
    user_birth        varchar(40)        not null,
    user_school       varchar(50)        not null,
    user_grade        int                not null,
    user_agree        int                not null,
    user_date         datetime
);

create table if not exists admin_table
(
    admin_seq      int auto_increment,
    admin_id       varchar(50) unique not null,
    admin_password varchar(100)       not null,
    admin_name     varchar(20)        not null,
    admin_phone1   varchar(10)        not null,
    admin_phone2   varchar(10)        not null,
    admin_phone3   varchar(10)        not null,
    admin_email    varchar(100)       null,
    admin_academy  varchar(50)        not null,
    admin_access   varchar(10)        not null,
    admin_tier     varchar(10)        not null,
    admin_date     datetime,
    primary key (admin_seq)
);
# 강의
#     (미완)
create table if not exists lecture_table
(
    lecture_seq  int auto_increment primary key,
    lecture_name varchar(50)  not null,
    lecture_link varchar(400) not null
);
#     업무 보고(미완)
create table if not exists adminwork_table
(
    adminwork_seq        int auto_increment,
    adminwork_content    varchar(200)  not null,
    adminwork_type       varchar(30)   not null,
    adminwork_date       date          not null,
    adminwork_deadline   date          not null,
    adminwork_manager    varchar(200)  not null,
    adminwork_incomplete varchar(200)  not null,
    adminwork_reason     varchar(1000) not null,
    adminwork_delete     int
);
# 공지
#     (미완)
create table if not exists admin_notice
(
    notice_seq     int auto_increment primary key,
    notice_title   varchar(30)   not null,
    notice_content varchar(1000) not null,
    notice_name    varchar(30)   not null,
    notice_date    datetime
);
# 자료실
#     (미완)
create table if not exists admin_material
(
    material_seq     int auto_increment primary key,
    material_title   varchar(30)   not null,
    material_content varchar(1000) not null,
    material_name    varchar(30)   not null,
    material_date    datetime
);
# 학원
create table if not exists academy_table
(
    academy_seq           int auto_increment primary key,
    academy_name          varchar(30)  not null,
    academy_phone1        varchar(10)  not null,
    academy_phone2        varchar(10)  not null,
    academy_phone3        varchar(10)  not null,
    academy_postcode      varchar(50)  not null,
    academy_address       varchar(100) not null,
    academy_detailaddress varchar(100) not null,
    academy_extraaddress  varchar(100) not null,
    academy_date          datetime
);
# 배치고사
#     (미완)
create table if not exists arrangement_test
(
    arrangement_seq          int auto_increment primary key,
    arrangement_name         varchar(50)   not null,
    arrangement_type1        varchar(20)   not null,
    arrangement_type2        varchar(20)   not null,
    arrangement_header       varchar(2000) not null,
    arrangement_answer       varchar(300)  not null,
    arrangement_explanation  varchar(1000) not null,
    arrangement_exam1        varchar(300)  null,
    arrangement_exam2        varchar(300)  null,
    arrangement_exam3        varchar(300)  null,
    arrangement_exam4        varchar(300)  null,
    arrangement_exam5        varchar(300)  null,
    arrangement_alternative1 varchar(300)  null,
    arrangement_alternative2 varchar(300)  null,
    arrangement_alternative3 varchar(300)  null,
    arrangement_alternative4 varchar(300)  null,
    arrangement_img_path     varchar(400)  null,
    arrangement_mp3_path     varchar(400)  null
);
# 배치고사 결과(미완)
create table if not exists arrangementresult
(
    arr_id          varchar(50) unique not null,
    arr_name        varchar(30)        not null,
    arr_typelisten  float              not null,
    arr_typebasic   float              not null,
    arr_typeword    float              not null,
    arr_typegrammer float              not null,
    arr_typetrans   float              not null,
    arr_totalscore  float              not null,
    primary key (arr_id)
);