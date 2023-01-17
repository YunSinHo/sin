package com.ld.user.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class UserVO {
	private int user_seq;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_phone1;
	private String user_phone2;
	private String user_phone3;
	private String user_parentphone1;
	private String user_parentphone2;
	private String user_parentphone3;
	private String user_email;
	private String user_birth;
	private String user_school;
	private int user_grade;
	private int user_agree;
	private Timestamp user_date;
}
