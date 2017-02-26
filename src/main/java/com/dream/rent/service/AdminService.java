package com.dream.rent.service;

import java.util.List;

import com.dream.rent.pojo.FindHouse;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.pojo.User;

public interface AdminService {
	 List<User> findAllUser();
	 
	 List<RentHouse> findAllRentHouse(RentHouse renthouseId);
	 
	 List<FindHouse> findAllFindHouse(FindHouse findhouseId);
}
