package com.oa.system.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oa.pager.Pager;
import com.oa.system.mapper.EmployeeDao;
import com.oa.system.mapper.PositionDao;
import com.oa.system.pojo.Position;

/**
 * 
 * @author pangxinyan
 * 
 */
@Service
@Transactional
public class PositionServiceImpl implements PositionService {

	@Autowired
	private PositionDao positionDao;

	@Override
	public List<Position> selectAllPos(Pager pager) {
		// 分页查询
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("currIndex", pager.getStart() - 1);
		data.put("pageSize", pager.getPageSize());
		System.out.println(data);
		return positionDao.selectAllPos(data);
	}

	@Override
	public boolean savePos(Position position) {

		Position position2 = positionDao.selectPos(position.getName());
		if (position2 != null) {

			return false;
		}
		System.out.println("####################" + position.getName());
		positionDao.savePos(position);
		return false;
	}

	@Override
	public Position selectPos(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePos(int id) {
		positionDao.deletePos(id);

	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return positionDao.getCount();
	}

	@Override
	public void updatePos(Position position) {
		positionDao.updatePos(position);

	}

	

}
