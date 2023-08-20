package com.ld.file;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IFileDao {

	void deleteReportFile(int id);

	long[] reportFileId();

	long[] reportFileReportId();

}
