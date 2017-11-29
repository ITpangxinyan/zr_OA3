package com.oa.system.mapper;

import java.util.List;
import java.util.Map;

import com.oa.system.pojo.Employee;

/**
 * 
 * @author pangxinyan
 * 员工信息的操作
 */
public interface EmployeeDao {
   //添加员工信息
	public void saveEmployee(Employee employee);
	//查询所有的员工信息
	public List<Employee> selectAllEmployee(Map<String,Object> data); 
	//根据id查询单个的员工
	public Employee selecteEmployee(int id);
	//根据id删除单个员工
	public void deleteEmployee(int id);
	//获取员工列表的总行数
	public int getCount() ;
	//查询最大员工编号
	public int getMaxId();
}
