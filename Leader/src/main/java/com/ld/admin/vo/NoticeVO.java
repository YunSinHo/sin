package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeVO {
	private int notice_seq;
	private String notice_title;
	private String notice_content;
	private String notice_name;
	private Timestamp notice_date;
}
