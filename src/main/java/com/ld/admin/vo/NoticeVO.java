package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class NoticeVO {
	private int notice_seq;
	private String notice_title;
	private String notice_content;
	private String notice_name;
	private Timestamp notice_date;
}
