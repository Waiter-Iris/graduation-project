package com.dream.rent.serviceImpl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dream.rent.mapper.AdminMapper;
import com.dream.rent.pojo.FindHouse;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.pojo.User;
import com.dream.rent.service.AdminService;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public List<User> findAllUser() {
		
		return adminMapper.findAllUser();
	}

	@Override
	public List<RentHouse> findAllRentHouse(RentHouse rentHouse) {
		
		return adminMapper.findAllRentHouse(rentHouse);
	}

	@Override
	public List<FindHouse> findAllFindHouse(FindHouse findhouse) {
		
		return adminMapper.findAllFindHouse(findhouse);
	}

}
