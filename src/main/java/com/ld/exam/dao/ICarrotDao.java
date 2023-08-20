package com.ld.exam.dao;

import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.UpdatorVO;
import com.ld.user.vo.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ICarrotDao {

	CarrotVO carrotread(int carrot_seq);

	UpdatorVO getUpdator(int carrot_seq);
	
	List<CarrotVO> carrotlist(Criteria cr);
	
	public void updateCarrot(CarrotVO carrotVO);

	public void carrotinsert(CarrotVO carrotVO);

	public void insertCarrotMulti(Map<String, Object> carrotMap);

	List<CarrotVO> selectCarrot(int[] carrot_seq);

	List<CarrotVO> todayCarrot(String carrot_date);

	

}
