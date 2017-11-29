package com.oa.emp.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oa.emp.service.LoginService;

/**
 * 
 * @author pangxinyan
 *
 */
@Controller
public class LoginController {

	
   @RequestMapping("/LoginEmp.action")
   public String LoginEmp(@RequestParam("username") String username,@RequestParam("password") String password, Model model){
	   Subject  subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(
				username, password);
		try {
			subject.login(token);
			return "index";
		} catch (Exception e) {
			// 这里将异常打印关闭是因为如果登录失败的话会自动抛异常
			 e.printStackTrace();
			//model.addAttribute("error", "用户名或密码错误");
			return "redirect:login.jsp";
		}
		
	
	   
   }
   
   @RequestMapping("/LoginOut.action") 
	public String  LoginOut(){
	   Subject  subject = SecurityUtils.getSubject();
	   subject.logout();
	   
		return "redirect:login.jsp";
		 
	 }
}
