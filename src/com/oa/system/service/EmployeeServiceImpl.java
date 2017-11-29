package com.oa.system.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.crypto.Data;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sun.util.logging.resources.logging;


import com.mysql.jdbc.log.Log;
import com.oa.pager.Pager;
import com.oa.system.mapper.EmployeeDao;
import com.oa.system.pojo.Employee;
@Service
public class EmployeeServiceImpl implements EmployeeService{
	@Autowired
	private EmployeeDao employeeDao;
	
	
	@Override
	public boolean saveEmployee(Employee employee) {
		System.out.println("#################"+employee.getPassword());
		 employeeDao.saveEmployee(employee);
		    
		return false;
	}

	@Override
	public List<Employee> selectAllEmployee(Pager pager) {
		//分页查询
		 Map<String, Object> data= new  HashMap<String, Object>();
		      data.put("currIndex",pager.getStart()-1 );
		      data.put("pageSize", pager.getPageSize() );

		    System.out.println("WWWWWWWWWWWW"+data);
	     List<Employee>  list=   employeeDao.selectAllEmployee(data);
		return  list;
	}

	@Override
	public Employee selectEmployee(int id) {
		
		return employeeDao.selecteEmployee(id);
	}

	@Override
	public void deleteEmployee(int id) {
		employeeDao.deleteEmployee(id);
		
	}
	public static void main(String[] args) {
		 Map<String, Object> map=new HashMap<String, Object>();
		 map.put("a", "123");
		 map.put("b", "321");
		System.out.println(""+map);
	}

	@Override
	public int getCount() {
		
		return employeeDao.getCount();
	}
	@Override
	public int getMaxId() {
		
		return employeeDao.getMaxId();
	}
}
