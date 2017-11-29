package com.oa.shiro;

import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.oa.emp.pojo.Emp;
import com.oa.emp.service.LoginService;



/**
 * 
 * @author pangxinyan
 *
 */
public class MyRealm extends AuthorizingRealm {
	
	
	@Autowired
	private LoginService loginService;
	/**
	 * 用于的权限的认证。
	 * 
	 * @param principalCollection
	 * @return
	 * 
	 *         继承AuthorizingRealm类之后就需要覆写它的两个方法，doGetAuthorizationInfo,
	 *         doGetAuthenticationInfo，这两个方法的作用我都有写注释，逻辑也比较简单。
	 *         doGetAuthenticationInfo是用于登录验证的
	 *         ，在登录的时候需要将数据封装到Shiro的一个token中，执行shiro的login
	 *         ()方法，之后只要我们将MyRealm这个类配置到Spring中
	 *         ，登录的时候Shiro就会自动的调用doGetAuthenticationInfo()方法进行验证。
	 * 
	 *         
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		System.out.println("进行权限授予...doGetAuthenticationInfo");
		String username = principalCollection.getPrimaryPrincipal().toString();
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
	Set<String> roleName=  loginService.getRoles(username);
	info.setRoles(roleName);
	
		return info;
		
		
	}

	/**
	 * 首先执行这个登录验证
	 * 
	 * @param token
	 * @return
	 * @throws AuthenticationException
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("进行登陆验证...doGetAuthenticationInfo");
		// 获取用户账号
		String username = token.getPrincipal().toString();
		System.out.println("进行登陆验证...doGetAuthenticationInfo"+username+"%%%%%%%%%%%%%%%%%%%");
		//根据用户名得到此用户
		Emp emp=  loginService.getEmp(username);
		//3）realmName：当前realm对象的name，调用父类的getName()方法即可
		System.out.println("进行登陆验证...emp.getPassword()"+emp.getPassword()+"%%%%%%%%%%%%%%%%%%%");
        String realmName = getName();
		if(emp!=null){
			//进行加盐处理
			 ByteSource credentialsSalt = ByteSource.Util.bytes(emp.getNameid());
			AuthenticationInfo authenticationInfo  =   new SimpleAuthenticationInfo(emp.getNameid(),  emp.getPassword(), credentialsSalt, realmName);
			
			return authenticationInfo;	
		}else {
			return null;
		}  
		
		
	}
	    
	
}

