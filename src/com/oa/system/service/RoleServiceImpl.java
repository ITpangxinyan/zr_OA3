package com.oa.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oa.system.mapper.RoleDao;
import com.oa.system.pojo.Employee;
import com.oa.system.pojo.Role;
/**
 * 
 * @author pangxinyan
 *
 */
@Service
public class RoleServiceImpl implements RoleService{
   //查询出用户的id,name,和角色信息
	@Autowired
	private RoleDao roleDao;
	//查询用户的所有的权限
	@Override
	public List<Role> selectEmpRol(int id) {
		
		return roleDao.selectEmpRol(id);
	}
    //查询此用户
	@Override
	public Employee selectEmployee(int id) {
		
		return roleDao.selectEmployee(id);
	}
	
	
}
