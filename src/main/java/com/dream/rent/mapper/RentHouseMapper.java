package com.dream.rent.mapper;

import java.util.List;

import com.dream.rent.pojo.RentHouse;

public interface RentHouseMapper {
    int deleteByPrimaryKey(Integer renthouseId);

    int insert(RentHouse record);

    int insertSelective(RentHouse record);

    RentHouse selectByPrimaryKey(Integer renthouseId);

    int updateByPrimaryKeySelective(RentHouse record);

    int updateByPrimaryKey(RentHouse record);
    
    List<RentHouse> selectInfo(int id);
    
}