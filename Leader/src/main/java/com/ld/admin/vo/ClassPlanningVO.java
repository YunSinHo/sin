package com.ld.admin.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ClassPlanningVO {
private Timestamp create_date;
private int class_id;
private int id;
private String title;
private String book_name;
private String class_name;
}
