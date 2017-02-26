package com.dream.rent.service;

import java.util.List;

import com.dream.rent.pojo.FindHouse;

public interface FindHouseService {
	
	 List<FindHouse> selectByGegion(FindHouse fh);
	 List<FindHouse> selectByHouseType(FindHouse fh);
	 
	 List<FindHouse> selectByHouseArea(Double fh);
	
}
