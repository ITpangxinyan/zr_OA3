package com.oa.system.mapper;

import java.util.List;
import java.util.Map;

import com.oa.pager.Pager;
import com.oa.system.pojo.Position;
/**
 * 
 * @author pangxinyan
 *
 */

public interface PositionDao {
	//查询所有的职位信息
	public List<Position> selectAllPos(Map<String,Object> data);
  //增加职位信息
	public void savePos(Position position);
  //根据id查询单个职位信息
	public Position selectPos(String name);
  //根据id删除职位
	public void deletePos(int id);
  //修改职位
	public void updatePos(Position position);
	//获取职位列表的总行数
	public int getCount() ;
	//查询出最大的id
	public int getid();
}
