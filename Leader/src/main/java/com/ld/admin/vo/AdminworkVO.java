package com.ld.admin.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class AdminworkVO {
	SimpleDateFormat dateFormat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");
	Date time = new Date();
	private int adminwork_seq;
	private String adminwork_content;
	private String adminwork_type;
	String adminwork_date = dateFormat.format(time);
	String adminwork_deadline = dateFormat.format(time);
	private String adminwork_manager;
	private String adminwork_incomplete;
	private String adminwork_reason;
	private int adminwork_delete;
}