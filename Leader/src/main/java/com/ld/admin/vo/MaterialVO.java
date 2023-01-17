package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MaterialVO {
	private int material_seq;
	private String material_title;
	private String material_content;
	private String material_name;
	private Timestamp material_date;
}
