package com.ld.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.UpdatorVO;
import com.ld.user.dao.ICarrotDao;
import com.ld.user.vo.Criteria;

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

}
