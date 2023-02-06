package com.ld.user.vo;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class StudentVO {
	private int id;
	private String available;
	private String stuid;
	private String parentnumber;
	private String number;
	private String grade;
	private String school;
	private String password;
	private String name;
	private Timestamp join_date;
	private Timestamp update_date;
}