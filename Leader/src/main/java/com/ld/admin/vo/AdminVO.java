package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AdminVO {
	private int id;
	private String user_id;
	private String password;
	private String name;
	private String number;
	private String available;
	
}
