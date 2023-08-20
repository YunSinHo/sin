package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class PostscriptVO {
	private int id;
	private int teacher_id;
	private String content;
	private String teacher_name;
	private Timestamp create_date;
}
