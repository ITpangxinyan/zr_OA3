package com.oa.emp.service;



import java.util.Set;

import com.oa.emp.pojo.Emp;

/**
 * 
 * @author pangxinyan
 *
 */

public interface LoginService {
	
  //根据用户名得到用户
  public Emp getEmp(String name);
  //根据用户名得到角色
  public Set<String> getRoles(String name);
  //根据用户名得到权限
  public Set<String> getPermissions(String name);
}
