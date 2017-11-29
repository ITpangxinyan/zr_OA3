package com.oa.system.mapper;

import java.util.List;
import java.util.Map;

import com.oa.system.pojo.Department;

public interface DepartmentDao {
	//根据name查询单个的部门信息
	public Department selectDep(String name);
	//添加部门
	  public void saveDep(Department department);
	//查询所有的部门信息
	  public List<Department> selectAllDep(Map<String,Object> data);
	  //根据id删除部门信息
	  public void deleteDep(int id);
	  //修改部门信息
	  public void updateDep(Department department);
	  //获取部门的总行数
	  public int getCount() ;
}
