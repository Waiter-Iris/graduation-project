package com.dream.rent.service;

import java.util.List;

import com.dream.rent.pojo.RentHouse;

public interface RentHouseService {
	 int deleteByPrimaryKey(Integer renthouseId);

	    int insert(RentHouse record);

	    int insertSelective(RentHouse record);

	    RentHouse selectByPrimaryKey(Integer renthouseId);

	    int updateByPrimaryKeySelective(RentHouse record);

	    int updateByPrimaryKey(RentHouse record);
	    
	    List<RentHouse> selectInfo(int id);
	    
	  
	    
}
