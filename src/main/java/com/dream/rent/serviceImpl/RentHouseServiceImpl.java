package com.dream.rent.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dream.rent.mapper.FindHouseMapper;
import com.dream.rent.mapper.RentHouseMapper;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.service.RentHouseService;
@Service("renthouseService")
public class RentHouseServiceImpl implements RentHouseService {

	@Autowired
	RentHouseMapper rentHouseMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer renthouseId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(RentHouse record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(RentHouse record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public RentHouse selectByPrimaryKey(Integer renthouseId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(RentHouse record) {
		// TODO Auto-generated method stub
		return rentHouseMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(RentHouse record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RentHouse> selectInfo(int id) {
		// TODO Auto-generated method stub
		return rentHouseMapper.selectInfo(id);
	}

}
