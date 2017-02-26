package com.dream.rent.mapper;



import java.util.List;

import com.dream.rent.pojo.Admin;
import com.dream.rent.pojo.FindHouse;
import com.dream.rent.pojo.RentHouse;
import com.dream.rent.pojo.User;


public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    List<User> findAllUser();
    
    List<RentHouse> findAllRentHouse(RentHouse rentHouse);
    
    List<FindHouse> findAllFindHouse(FindHouse findHouse);
}