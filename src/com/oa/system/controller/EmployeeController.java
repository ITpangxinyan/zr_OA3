package com.oa.system.controller;

import java.util.List;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oa.pager.Pager;
import com.oa.system.pojo.Department;
import com.oa.system.pojo.Employee;
import com.oa.system.pojo.Position;
import com.oa.system.service.EmployeeService;

@Controller
public class EmployeeController {
   @Autowired
   private EmployeeService employeeService;
   
   private int pageNum;
   //跳转到index页面
   @RequestMapping("/index.action")
   public String index(){
	return "index";
	   
   }
   
   @RequestMapping("/a.action")
   public String a(){
	   
	   
	return "emp/AddEmp_Dep";
	   
   }
   
   
   
   //添加员工跳转
   @RequestMapping("/RedsaveEmployee.action")
   public String RedsaveEmployee(Model model){
	   System.out.println("@@@@@@@@@@@@@@@@@@@@::"+employeeService.getMaxId());
	  int nameid=  employeeService.getMaxId()+1;
	  model.addAttribute("nameid", nameid);
	return "emp/AddEmp";
	   
   }
   
   //添加员工信息
   @RequestMapping("/saveEmployee.action")
   public String saveEmployee(Employee employee1) {
	   
	    //Employee employee=new Employee();
	  
	   // Department department= new Department();
	   //department.setId("2");
	   //employee1.setDepartment(department);
	  // Position position= new Position();
	   //position.setId("1");
	   //employee1.setPosition(position);
	   int hashIterations = 1024;
		String algorithmName = "MD5";
		Object salt = ByteSource.Util.bytes(employee1.getNameid());
		//加密及加盐后的密码
		SimpleHash mima = 	new SimpleHash(algorithmName, employee1.getPassword(), salt, hashIterations);
		employee1.setPassword(mima.toString());
		employeeService.saveEmployee(employee1);  
	   
	return "redirect:selectAllEmployee.action?pageNum=1";
}
   //查新所有的数据
   @RequestMapping("/selectAllEmployee.action")
   public String selectAllEmployee(Model model,@RequestParam int  pageNum){
	   System.out.println("pageNum:::::::::::::::"+pageNum+"\n");
	   this.pageNum=pageNum;
	    Pager pager=new Pager(employeeService.getCount(),this.pageNum);
	         
	List<Employee>  list=  employeeService.selectAllEmployee(pager);
	
	for(int i=0;i<list.size();i++){
		Employee employee= list.get(i);
		String depString= employee.getDepartment().getName();
		String idString=employee.getId();
		System.out.println("list的id值"+idString+"\n");
		System.out.println("list的值的Department的name的值"+depString);
	}
	 model.addAttribute("pager", pager);
	 model.addAttribute("list", list); 
	
	return "emp/QueryEmp";
	   
   }
   
   //删除员工
   @RequestMapping("/deleteEmployee.action")
   public String deleteEmployee(@RequestParam int  empId){
	   employeeService.deleteEmployee(empId);
	return "redirect:selectAllEmployee.action?pageNum=1";
	   
   }
   //查看详细信息
   @RequestMapping("/selectEmployee.action")
   public String detaildeEmp(Model model,@RequestParam int  empId){
	   
	 Employee employee=  employeeService.selectEmployee(empId);
	   model.addAttribute("employee", employee);
	return "emp/DetailedEmp";
	   
   }
   
   
   //修改员工信息
   @RequestMapping("/updateEmployee.action")
   public String updateEmployee(){
	return null;
	   
   }
   
}