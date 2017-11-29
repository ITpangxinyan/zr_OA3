package com.oa.system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oa.system.pojo.Employee;
import com.oa.system.pojo.Role;
import com.oa.system.service.RoleService;

/**
 * 
 * @author pangxinyan
 *
 */
@Controller
public class RoleController {
	@Autowired
    private RoleService roleService;
	
	
	@RequestMapping("slectEmpRol.action")
	public String slectEmpRol(Model model,@RequestParam int  id){
	Employee employee=	roleService.selectEmployee(id);
	List<Role> list= roleService.selectEmpRol(id);
		model.addAttribute("employee", employee);
		model.addAttribute("list", list);
		return "emp/EmpRole";
		
	}
    
}
