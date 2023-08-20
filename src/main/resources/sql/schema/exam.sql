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
    trans_translate3 varchar(1000) not null
);

create table if not exists wordgugudan
(
    gugudan_name  varchar(20),
    gugudan_level int
);

create table if not exists wordcollection
(
    word_seq        bigint auto_increment primary key,
    word_name       varchar(100) not null,
    word_trans      varchar(100) not null,
    word_difficulty int          not null,
    word_trans1     varchar(100) not null,
    word_trans2     varchar(100) not null,
    word_trans3     varchar(100) not null
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

create table if not exists imsi_table
(
    imsi_seq     int not null auto_increment primary key,
    imsi_title   varchar(30),
    imsi_content varchar(3000)
);

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

create table if not exists exam
(
    id               int auto_increment not null primary key,
    num              int                not null,
    score            float              not null,
    student_id       int                not null,
    class_name       varchar(300)       not null,
    content          varchar(300)       not null,
    `write`          varchar(300)       null,
    word_trans       varchar(300)       null,
    word_name        varchar(300)       null,
    word_seq         int                null,
    date             varchar(300)       null,
    ox               varchar(300)       null,
    wrong_word_count int                null
);