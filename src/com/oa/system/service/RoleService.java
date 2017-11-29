package com.oa.system.service;

import java.util.List;

import com.oa.system.pojo.Employee;
import com.oa.system.pojo.Role;

public interface RoleService {
	//根据id查询出用户的编号，姓名，角色
	public List<Role> selectEmpRol(int id);
	//查询出此用户
	public Employee selectEmployee(int id);
}
