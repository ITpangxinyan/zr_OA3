package com.oa.system.mapper;

import java.util.List;

import com.oa.system.pojo.Employee;
import com.oa.system.pojo.Role;

public interface RoleDao {
 //查询出用户的角色信息
  public List<Role> selectEmpRol(int id);
//根据id查询出用户的信息
  public Employee selectEmployee(int id);
}

  