package com.oa.system.service;

import java.util.List;

import com.oa.pager.Pager;
import com.oa.system.pojo.Department;

public interface DepartmentService {
  //添加部门信息
	public boolean saveDep(Department department);
  //根据name查询单个的部门信息
	public Department select(String name);
  //查询所有的部门信息
  public List<Department> selectAllDep(Pager pager);
  //根据id删除部门信息
  public void deleteDep(int id);
  //修改部门信息
  public void updateDep(Department department);
  //获取部门的总行数
  public int getCount() ;
}
