<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>中软OA-系统登陆</title>
<script type="text/javascript" src="js/jquery.js"></script>

<link href="css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

	$(document).ready(function(e) {
        
		/*用户登录*/
		$('#submitBtn').click(function(e) {
			location.href = 'LoginEmp.action';
			
        });
		
    });

</script>
</head>
<body>
<div id="container">
	<form name="form1" method="post" action="LoginEmp.action">
				<div class="login">系统登录</div>
				<div class="username-text">用户名:</div>
				<div class="password-text">密码:</div>
				<div class="username-field">
					<input name="username" id="username" value="szz" type="text">
				</div>
				<div class="password-field">
					<input name="password" id="password" value="" type="password">
				</div>
				<input name="remember-me" id="remember-me" type="checkbox"><label for="remember-me">记住我</label>
				<div class="forgot-usr-pwd">忘记 <a href="#">用户名</a> 或 <a href="#">密码</a>?</div>
				<input id="submitBtn" name="button" value="GO" type="submit">
				
	</form>
</div>





</body></html>