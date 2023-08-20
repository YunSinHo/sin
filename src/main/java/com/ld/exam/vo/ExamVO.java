package com.ld.exam.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@Data
public class ExamVO {

	private int id;
	private int num;
	private double score;
	private int student_id;
	private String class_name;
    private String content;
	private String write;
	private String word_trans;
	private String word_name;
	private int word_seq;
	private String date;
	private String ox;
	//틀린단어 갯수
	private int wrongWordCount;
}
