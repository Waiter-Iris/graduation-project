package com.dream.rent.service;

import com.dream.rent.pojo.User;

public interface UserService {
	public User findByName(User user);

	
	public int insertSelective(User user);
	
	int updateByUserId(User user);

}
