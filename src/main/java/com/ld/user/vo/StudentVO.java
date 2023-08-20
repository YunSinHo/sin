package com.ld.user.vo;


import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudentVO {
	private int id;
	private String available;
	private String user_id;
	private String parentnumber;
	private String number;
	private String grade;
	private String school;
	private String password;
	private String name;
	private Timestamp join_date;
	private Timestamp update_date;
	private String student_class;
}