package com.oa.system.service;

import java.util.List;

import com.oa.pager.Pager;
import com.oa.system.pojo.Employee;

/**
 * 
 * @author pangxinyan
 * 员工的增删改查
 */
public interface EmployeeService {
   //添加员工的信息
	public  boolean saveEmployee(Employee employee);
   //查询所有的员工 
   public  List<Employee> selectAllEmployee(Pager pager);
   //根据id查询单个员工 
   public  Employee selectEmployee(int id);
   //根据id删除一个员工
   public void deleteEmployee(int id);
   //获取员工列表的总行数
   public int getCount() ;
 //获得最大的员工nameid
	public int getMaxId();
}

