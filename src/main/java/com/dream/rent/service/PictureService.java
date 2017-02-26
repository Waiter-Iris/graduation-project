package com.dream.rent.service;

import com.dream.rent.pojo.Picture;

public interface PictureService {
	 int deleteByPrimaryKey(Integer pictureId);

	    int insert(Picture record);

	    int insertSelective(Picture record);

	    Picture selectByPrimaryKey(Integer pictureId);

	    int updateByPrimaryKeySelective(Picture record);

	    int updateByPrimaryKey(Picture record);
}
