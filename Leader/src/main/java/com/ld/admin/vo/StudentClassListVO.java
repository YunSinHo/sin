package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

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
