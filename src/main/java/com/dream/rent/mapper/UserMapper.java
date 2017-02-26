package com.dream.rent.mapper;

import com.dream.rent.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User findByName(User user);
    

    User userAdd(User user);
    
    int updateByUserId(User user); 

}