package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AcademyVO {
	private int academy_seq;
	private String academy_name;
	private String academy_phone1;
	private String academy_phone2;
	private String academy_phone3;
	private String academy_postcode;
	private String academy_address;
	private String academy_detailaddress;
	private String academy_extraaddress;
	private Timestamp academy_date;
}
