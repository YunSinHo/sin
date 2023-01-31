package com.ld.user.vo;

import lombok.Data;

@Data
public class ExamVO {

	private int id;
	private int num;
	private double score;
	private int student_id;
	private String class_name;
	private String write;
	private String word_trans;
	private String word_name;
	private int word_seq;
	private String content;
	private String date;
	private String ox;
	
}
