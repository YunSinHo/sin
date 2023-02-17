package com.ld.user.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class TeacherVO {
	private int id;
	private String teaid;
	private String password;
	private String name;
	private String number;
	private String available;
	private Timestamp join_date;
	private Timestamp update_date;
	private String department;
	
}
