package com.dream.rent.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dream.rent.mapper.UserMapper;
import com.dream.rent.pojo.User;
import com.dream.rent.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	public UserMapper usermapper;

	@Override
	public User findByName(User user) {
		
		return usermapper.findByName(user);
	}


	@Override
	public int insertSelective(User user) {
		
		return usermapper.insertSelective(user);
	}

	@Override
	public int updateByUserId(User user) {
		usermapper.updateByUserId(user);
		return 0;
	}
	

}
