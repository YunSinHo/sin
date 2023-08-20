package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudentClassAllVO {
	private int id;
	private String user_id;
	private String grade;
	private String name;
	private int student_id;
	private String class_name;
	private Timestamp join_date;
	private Timestamp update_date;
	private int class_id;
}
