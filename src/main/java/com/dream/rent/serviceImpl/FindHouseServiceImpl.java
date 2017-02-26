package com.dream.rent.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dream.rent.mapper.FindHouseMapper;
import com.dream.rent.pojo.FindHouse;
import com.dream.rent.service.FindHouseService;
@Service("findhouseService")
public class FindHouseServiceImpl implements FindHouseService{

	@Autowired
	FindHouseMapper findHouseMapper;
	
	@Override
	public List<FindHouse> selectByGegion(FindHouse fh) {
		// TODO Auto-generated method stub
		return (List<FindHouse>) findHouseMapper.selectByGegion(fh);
	}

	@Override
	public List<FindHouse> selectByHouseType(FindHouse fh) {
		// TODO Auto-generated method stub
		return  (List<FindHouse>) findHouseMapper.selectByHouseType(fh);
	}

	@Override
	public List<FindHouse> selectByHouseArea(Double fh) {
		// TODO Auto-generated method stub
		return findHouseMapper.selectByHouseArea(fh);
	}

}
