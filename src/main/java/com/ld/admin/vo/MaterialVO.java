package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class MaterialVO {
	private int material_seq;
	private String material_title;
	private String material_content;
	private String material_name;
	private Timestamp material_date;
}
