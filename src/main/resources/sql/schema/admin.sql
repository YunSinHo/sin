create table if not exists adminwork_table
(
    adminwork_seq        int auto_increment primary key,
    adminwork_content    varchar(200)  not null,
    adminwork_type       varchar(30)   not null,
    adminwork_date       date          not null,
    adminwork_deadline   date          not null,
    adminwork_manager    varchar(200)  not null,
    adminwork_incomplete varchar(200)  not null,
    adminwork_reason     varchar(1000) not null,
    adminwork_delete     int
);

create table if not exists admin_notice
(
    notice_seq     int auto_increment primary key,
    notice_title   varchar(30)   not null,
    notice_content varchar(1000) not null,
    notice_name    varchar(30)   not null,
    notice_date    datetime
);

create table if not exists admin_material
(
    material_seq     int auto_increment primary key,
    material_title   varchar(30)   not null,
    material_content varchar(1000) not null,
    material_name    varchar(30)   not null,
    material_date    datetime
);

create table if not exists admin_table
(
    admin_seq      int auto_increment primary key,
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
    admin_date     datetime
);

create table if not exists report
(
    id                 int auto_increment primary key,
    teacher_id         int          not null,
    title              varchar(255) not null,
    content            varchar(255) not null,
    teacher_name       varchar(255) not null,
    deadline           datetime     not null,
    `check`            varchar(255) null,
    fulfill            varchar(255) null,
    reply              varchar(255) null,
    reply_check        varchar(255) null,
    success            varchar(255) null,
    replyteacher_check varchar(255) null,
    replyteacher       varchar(255) null,
    reorder            varchar(255) null,
    importance         varchar(255) null,
    longorder          varchar(255) null,
    file_id            int          null,
    create_date        datetime     null,
    update_date        datetime     null
);

create table if not exists report_file
(
    id            int auto_increment primary key,
    original_name varchar(255),
    save_name     varchar(255),
    save_path     varchar(255),
    report_id     int,
    delete_yn     varchar(255)
);

create table if not exists teacher
(

);
