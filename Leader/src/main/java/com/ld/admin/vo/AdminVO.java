package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AdminVO {
	private int admin_seq;
	private String admin_id;
	private String admin_password;
	private String admin_name;
	private String admin_phone1;
	private String admin_phone2;
	private String admin_phone3;
	private String admin_email;
	private String admin_academy;
	private String admin_access;
	private String admin_tier;
	private Timestamp admin_date;
}
