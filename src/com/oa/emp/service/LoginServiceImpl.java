package com.oa.emp.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oa.emp.mapper.LoginDao;
import com.oa.emp.pojo.Emp;
import com.oa.emp.pojo.Permission;
import com.oa.system.pojo.Role;
/**
 * 
 * @author pangxinyan
 *
 */
@Transactional
@Service("LoginService")
public class LoginServiceImpl implements LoginService{
       @Autowired
       private LoginDao loginDao;
       
	@Override
	public Emp getEmp(String name) {
		System.out.println("进行...Emp getEmp"+name+"%%%%%%%%%%%%%%%%%%%");
		
		Emp emp= loginDao.getEmp(name);
		System.out.println("进行...Emp getEmp"+emp+"%%%%%%%%%%%%%%%%%%%");
		return emp;
	}

	@Override
	public Set<String> getRoles(String name) {
		// TODO Auto-generated method stub
		return loginDao.getRoles(name);
	}

	@Override
	public Set<String> getPermissions(String name) {
		// TODO Auto-generated method stub
		return loginDao.getPermissions(name);
	}

}
