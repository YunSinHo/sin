package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class StudentClassAllVO {
	private int id;
	private String stuid;
	private String grade;
	private String name;
	private int student_id;
	private String class_name;
	private Timestamp join_date;
	private Timestamp update_date;
	private int class_id;
}
