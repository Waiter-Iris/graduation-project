package com.dream.rent.mapper;

import java.util.List;

import com.dream.rent.pojo.FindHouse;

public interface FindHouseMapper {
    int deleteByPrimaryKey(Integer findhouseId);

    int insert(FindHouse record);

    int insertSelective(FindHouse record);

    FindHouse selectByPrimaryKey(Integer findhouseId);

    int updateByPrimaryKeySelective(FindHouse record);

    int updateByPrimaryKey(FindHouse record);
    
    List<FindHouse> selectByGegion(FindHouse fh);
    
    List<FindHouse> selectByHouseType(FindHouse fh);
    
    List<FindHouse> selectByHouseArea(Double fh);
    
}