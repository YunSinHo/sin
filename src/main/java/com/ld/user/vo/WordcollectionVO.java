package com.ld.user.vo;

import lombok.Data;

@Data
public class WordcollectionVO {
	private int word_seq;
	private String word_name;
	private String word_trans;
	private int word_difficulty;
	//랜덤 보기
	private String word_trans1;
	private String word_trans2;
	private String word_trans3;
}
