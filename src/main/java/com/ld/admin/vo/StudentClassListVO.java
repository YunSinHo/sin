package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudentClassListVO {
	private int id;
	private int student_id;
	private int class_id;
	private String class_name;
	private String title;
	private String book_name;
	private Timestamp create_date;
}
