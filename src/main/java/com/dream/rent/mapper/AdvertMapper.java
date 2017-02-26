package com.dream.rent.mapper;

import com.dream.rent.pojo.Advert;

public interface AdvertMapper {
    int deleteByPrimaryKey(Integer advertId);

    int insert(Advert record);

    int insertSelective(Advert record);

    Advert selectByPrimaryKey(Integer advertId);

    int updateByPrimaryKeySelective(Advert record);

    int updateByPrimaryKey(Advert record);
}