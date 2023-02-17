package com.ld.file;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Table(name = "file")
@Entity
@Data
public class FileEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="file_id")
    private Long id;
    
    private String orgNm;
    
    private String savedNm;
    
    private String savedPath;

    @Builder
    public FileEntity(Long id, String orgNm, String savedNm, String savedPath) {
        this.id = id;
        this.orgNm = orgNm;
        this.savedNm = savedNm;
        this.savedPath = savedPath;
    }
}