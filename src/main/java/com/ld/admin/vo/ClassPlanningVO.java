package com.ld.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class ClassPlanningVO {
    private int id;
    private int class_id;
    private String title;
    private String book_name;
    private String class_name;
    private Timestamp create_date;
}
