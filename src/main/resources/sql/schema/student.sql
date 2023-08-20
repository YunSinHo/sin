create table if not exists updator
(
    carrot_seq   int auto_increment primary key,
    updator_name varchar(500)
);

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


create table if not exists lecture_table
(
    lecture_seq  int auto_increment primary key,
    lecture_name varchar(50)  not null,
    lecture_link varchar(400) not null
);

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

create table if not exists student_class_list
(
    id          int auto_increment primary key,
    user_id     varchar(255) null,
    grade       varchar(255) null,
    name        varchar(255) null,
    student_id  int          null,
    class_name  varchar(255) null,
    join_date   datetime     null,
    update_date datetime     null,
    class_id    int          null
);