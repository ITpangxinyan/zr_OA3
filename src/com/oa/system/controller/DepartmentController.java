package com.oa.system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oa.pager.Pager;
import com.oa.system.pojo.Department;
import com.oa.system.service.DepartmentService;
/**
 * 
 * @author pangxinyan
 *
 */
@Controller
public class DepartmentController {
    @Autowired
    private DepartmentService departmentService;
    
   private   int pageNum;
    //查询所有的用户信息
  @RequestMapping(value="/selectAllDep.action",method=RequestMethod.GET)
  public String selectAllDep(Model model,@RequestParam int  pageNum){
	  this.pageNum=pageNum;
	  Pager pager=new Pager(departmentService.getCount(), this.pageNum);
	  List<Department> list=  departmentService.selectAllDep(pager);
	  model.addAttribute("pager", pager);
	  model.addAttribute("list", list);
	return "dep/QueryDep";
	  
  }
  @RequestMapping(value="/selectAllDepA.action",method=RequestMethod.GET)
  public String selectAllDep2(@RequestParam int  pageNum){
	  this.pageNum=pageNum;
	return "redirect:/selectAllDep.action";
	  
  }
  
  //根据id删除部门信息
  @RequestMapping(value="/deleteDep.action",method=RequestMethod.GET)
  public String deleteDep(@RequestParam int deptId){
	  
	  departmentService.deleteDep(deptId);
	  
	return "redirect:/selectAllDep.action?pageNum="+pageNum;
	  
  }
  //增加新部门跳转
  @RequestMapping("/RedAllDep.action")
  public String RedAllDep(){
	  
	return "dep/AddDep";
	  
  }
  //增加新部门
  @RequestMapping("/AllDep.action")
  public String AllDep(Department department,Model model){
	  System.out.println("部门名称：#######################"+department.getName());
	boolean bln= departmentService.saveDep(department);
	if(bln!=true){
		model.addAttribute("log", "部门已经存在，请重新添加");
		return "dep/AddDep";
	}
	return "redirect:/selectAllDep.action?pageNum="+pageNum;
	  
  }
  //修改部门跳转
  @RequestMapping(value="/RedUpdateDep.action",method=RequestMethod.POST)
  public String RedUpdateDep(@RequestParam String name,Model model){
	  System.out.println("department*******************"+name);
	  Department department=  departmentService.select(name);
	             System.out.println("department*******************"+department);
	  model.addAttribute("department", department);  
	return "dep/UpdateDep";
	  
  }
  //修改部门
  @RequestMapping("UpdateDep.action")
  public String UpdateDep(Department department){
	  departmentService.updateDep(department);
	return "redirect:/selectAllDep.action?pageNum="+pageNum;
	  
  }
}
