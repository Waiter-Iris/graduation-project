package com.dream.rent.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dream.rent.mapper.PictureMapper;
import com.dream.rent.pojo.Picture;
import com.dream.rent.service.PictureService;
@Service("pictureService")
public class PictureServiceImpl implements PictureService {

	@Autowired
	PictureMapper pictureMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer pictureId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Picture record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Picture record) {
		// TODO Auto-generated method stub
		return pictureMapper.insertSelective(record);
	}

	@Override
	public Picture selectByPrimaryKey(Integer pictureId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Picture record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Picture record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
