package com.ld.admin.vo;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReportVO {
	private int id;
	private int teacher_id;
private String title;
private String content;
private String check;
private String fulfill;
private Timestamp create_date;
private Timestamp update_date;
private Timestamp deadline;
private String teacher_name;
private String reply;
private String reply_check;
private String success;
private String replyteacher_check;
private String replyteacher;
private String reorder;
}
