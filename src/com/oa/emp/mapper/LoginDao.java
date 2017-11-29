package com.oa.emp.mapper;

import java.util.Set;

import com.oa.emp.pojo.Emp;
import com.oa.emp.pojo.Permission;
import com.oa.system.pojo.Role;

/**
 * 
 * @author pangxinyan
 *
 */
public interface LoginDao {
   //根据用户名得到用户
	public Emp getEmp(String name);
   //根据用户名得到用户的角色
	public Set<String> getRoles(String name);
	//根据用户名得到用户的权限
	public Set<String> getPermissions(String name);
}
