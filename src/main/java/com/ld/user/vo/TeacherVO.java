package com.ld.user.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class TeacherVO {
	private int id;
	private String user_id;
	private String password;
	private String name;
	private String number;
	private String available;
	private Timestamp join_date;
	private Timestamp update_date;
	private String department;
	
}
