package com.oa.system.service;

import java.util.List;

import com.oa.pager.Pager;
import com.oa.system.pojo.Position;

/**
 * 
 * @author pangxinyan
 *
 */
public interface PositionService {
  //查询所有的职位信息
	public List<Position> selectAllPos(Pager pager);
  //增加职位信息
	public boolean savePos(Position position);
  //根据id查询单个职位信息
	public Position selectPos(int id);
  //根据id删除职位
	public void deletePos(int id);
	//修改数据
	public void updatePos(Position position);
	//获取职位列表的总行数
	public int getCount() ;
	
}
