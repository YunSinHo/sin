package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class ReportVO {
    private int id;
    private int teacher_id;
    private String title;
    private String content;
    private String teacher_name;
    private Timestamp deadline;

    private String check;
    private String fulfill;
    private String reply;
    private String reply_check;
    private String success;
    private String replyteacher_check;
    private String replyteacher;
    private String reorder;
    private String importance;
    private String longorder;
    private Long file_id;
    private Timestamp create_date;
    private Timestamp update_date;
}
