package com.oa.system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oa.pager.Pager;
import com.oa.system.mapper.PositionDao;
import com.oa.system.pojo.Position;
import com.oa.system.service.PositionService;

/**
 * 
 * @author pangxinyan
 *
 */
@Controller
public class PositionController {
   @Autowired
   private PositionService positionService;
   
   
   
   private int pageNum;
   //查询所有的岗位信息
   @RequestMapping(value="selectAllPos.action",method=RequestMethod.GET)
   public String selectAllPos(Model model,@RequestParam int  pageNum){
	   this.pageNum =pageNum;
	   Pager pager=new Pager(positionService.getCount(), pageNum);
	List<Position> list=   positionService.selectAllPos(pager);
	model.addAttribute("pager", pager);
	  model.addAttribute("list", list);
	return "pos/Position";
	   
   }
   //添加岗位
   @RequestMapping("savePos.action")
   public String RedsavePos(Model model,Position position){
	  System.out.println("$$$$$$$$$$$$$$$:::"+position.getName()); 
	   if(position.getName()==null){
			//添加失败
			model.addAttribute("log", "岗位名称不能为空"); 
			return "redirect:/selectAllPos.action?pageNum=1";	
		}
	 positionService.savePos(position);
	return "redirect:/selectAllPos.action?pageNum=1";
	   
   }
  //删除岗位
   @RequestMapping("deletePos.action")
   public String deletePosString(Model model,Position position){
	   System.out.println("}}}}}}}}}}}}}$$$$$$$$$$$$$$"+position.getId());
	    
	   try {
		   positionService.deletePos(Integer.parseInt(position.getId())); 
	   } catch (NumberFormatException e) {
	       e.printStackTrace();
	   }
	   
	   
	   
	return "redirect:/selectAllPos.action?pageNum=1";
	   
   }
   //修改岗位
   @RequestMapping("updatePos.action")
   public String updatePos(Model model,Position position){
	   positionService.updatePos(position);
	return "redirect:/selectAllPos.action?pageNum=1";
	   
   }
}
