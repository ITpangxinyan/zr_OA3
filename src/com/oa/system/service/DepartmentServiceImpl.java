package com.oa.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oa.pager.Pager;
import com.oa.system.mapper.DepartmentDao;
import com.oa.system.pojo.Department;
/**
 * 
 * @author pangxinyan
 *
 */
@Service
public class DepartmentServiceImpl implements DepartmentService {
	@Autowired
	private DepartmentDao departmentDao;
    //查询所有的部门信息
	@Override
	public List<Department> selectAllDep(Pager pager) {
		//分页查询
		 Map<String, Object> data= new  HashMap<String, Object>();
		      data.put("currIndex", pager.getStart()-1);
		      data.put("pageSize",  pager.getPageSize());
		   
		return departmentDao.selectAllDep(data);
	}

	@Override
	public void deleteDep(int id) {
		departmentDao.deleteDep(id);
		
	}

	@Override
	public void updateDep(Department department) {
		  departmentDao.updateDep(department);
		
	}
     //得到部门有多少行
	@Override
	public int getCount() {
		 
		return departmentDao.getCount();
	}
    //添加部门
	@Override
	public boolean saveDep(Department department) {
		//先去数据库中查询看有此部门没有
		Department department2=  departmentDao.selectDep(department.getName());
		if(department2!=null){
			return false;
		}
		departmentDao.saveDep(department);
		//添加成功返回true，失败返回false；
		return true;
		
	}
    //根据name查询单个部门信息
	@Override
	public Department select(String name) {
		
		return departmentDao.selectDep(name);
	}
}
