package com.ld.user.service;

import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.UpdatorVO;
import com.ld.user.dao.ICarrotDao;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CarrotService {

	@Autowired
	private ICarrotDao carrotDao;
	public CarrotVO carrotread(int carrot_seq) {
		return carrotDao.carrotread(carrot_seq);
	}

	public UpdatorVO getUpdator(int carrot_seq) {
		return carrotDao.getUpdator(carrot_seq);
	}

	public void updateCarrot(CarrotVO carrotVO) {
		carrotDao.updateCarrot(carrotVO);
		
	}

	public void carrotinsert(CarrotVO carrotVO) {
		carrotDao.carrotinsert( carrotVO);
		
	}

	public List<CarrotVO> carrotlist(Criteria cr) {
		return carrotDao.carrotlist( cr);
	}

	public void insertCarrotMulti(Map<String, Object> carrotMap) {
		carrotDao.insertCarrotMulti(carrotMap);
		
	}

	public List<CarrotVO> selectCarrot(int[] carrot_seq) {
		// TODO Auto-generated method stub
		return carrotDao.selectCarrot(carrot_seq);
	}

	public List<CarrotVO> todayCarrot(String carrot_date) {
		return carrotDao.todayCarrot(carrot_date);
	}

}
