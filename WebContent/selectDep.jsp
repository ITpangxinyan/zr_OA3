<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class=" js rgba boxshadow csstransitions"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="%E4%B8%AD%E8%BD%AFOA_files/bootstrap.css">
<link href="%E4%B8%AD%E8%BD%AFOA_files/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="%E4%B8%AD%E8%BD%AFOA_files/jquery.css">
<script type="text/javascript" src="%E4%B8%AD%E8%BD%AFOA_files/jquery.js"></script>
<script type="text/javascript" src="%E4%B8%AD%E8%BD%AFOA_files/bootstrap.js"></script>
<script type="text/javascript" src="%E4%B8%AD%E8%BD%AFOA_files/Validform_v5.js"></script>
<script type="text/javascript" src="%E4%B8%AD%E8%BD%AFOA_files/jquery_002.js"></script>
<script type="text/javascript" src="%E4%B8%AD%E8%BD%AFOA_files/popwin.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
	    
		//一行代码搞定，提交表单的时候会自动触发验证程序
		$('#form2').Validform({
			tiptype:3	
		});

		//选择部门模态窗口
		$('#deptBtn').click(function(){			
			popWin.showWin("600","500","选择部门","../dept/querySmall.action");				
		});

		//选择职务模态窗口
		$('#jobBtn').click(function(){			
			popWin.showWin("600","500","选择职务","../job/querySmall.action");										
		});
	});
</script>
</head>
<body>

<!-- 网页头部 -->


<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="%E4%B8%AD%E8%BD%AFOA_files/style.css" rel="stylesheet" type="text/css" media="all">
<!--slider-->
<script src="%E4%B8%AD%E8%BD%AFOA_files/modernizr.js"></script>
<script>
	window.jQuery || document.write('<script src="../js/libs/jquery-1.7.min.js">\x3C/script>')
</script>

<!--网页内容-->

   	<div class="wrap">
		<div class="top-hader">
			<div class="top-header-left">
				<p>ICSS中软OA	 &nbsp;&nbsp;&nbsp;电话:(86-411)84755574</p>
			</div>
			<div class="top-header-right">
				<p>
					<a href="#">用户名：szz</a> &nbsp;&nbsp;&nbsp;
					<a href="http://localhost:7777/oa/login.jsp">切换用户</a>&nbsp;&nbsp;&nbsp;
					<a href="http://localhost:7777/oa/login.jsp">退出登录</a>&nbsp;&nbsp;&nbsp;
					<a href="http://localhost:7777/oa/emp1/read.action">查看个人信息</a>
                        
				</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="header">
			<div class="logo">
				<a><img src="%E4%B8%AD%E8%BD%AFOA_files/1.bmp" alt="" title="logo"></a>
			</div>
		</div>
	</div>
	<div class="menu-bg">
		<div class="wrap">
			<ul class="nav ">
				<li class="active"><a href="http://localhost:7777/oa/pages/index.jsp">首页</a></li>
				<li><a href="http://localhost:7777/oa/schedule/query.action?scheduleEmpid=1">工作安排</a></li>
				<li><a href="http://localhost:7777/oa/Card/query.action">名片夹</a></li>
				<li><a href="http://localhost:7777/oa/pages/message/AddMessage.jsp">在线信息</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">个人文件夹<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="http://localhost:7777/oa/pages/folderMana/QueryFolder.jsp">文件夹列表</a></li>
						<li><a href="http://localhost:7777/oa/pages/folderMana/QuerySharingDir.jsp">共享目录&nbsp;&nbsp;</a></li>
					</ul>
				</li>
				
				 <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
				
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">会议管理<span class="caret"></span></a>
					<ul class="dropdown-menu">
	                    			
	                             		 <li><a href="http://localhost:7777/oa/meetingroom/query.action">会议室管理</a></li>
	                             	   
							      <li><a href="http://localhost:7777/oa/meetingorder/query.action">会议预约&nbsp;&nbsp;</a></li>
							      <li><a href="http://localhost:7777/oa/meetingorder/querymeeting.action">会议记录&nbsp;&nbsp;</a></li>
							      
							     	 <li><a href="http://localhost:7777/oa/device/query.action">设备管理&nbsp;&nbsp;</a></li>  
							                            
	            	</ul>
				</li>
					
				
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
					
						   <li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统管理<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                              <li><a href="http://localhost:7777/oa/dept/query.action">部门管理</a></li>
								      <li><a href="http://localhost:7777/oa/job/query.action">职务管理</a></li>
								      <li><a href="http://localhost:7777/oa/emp/query.action">员工管理</a></li>
								      <li><a href="http://localhost:7777/oa/bbs/queryByTime1.action">公告管理</a></li>                         
		                    	</ul>
		                    </li>
						
					
					  
                   
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							 <li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">资产管理<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                            <li><a href="http://localhost:7777/oa/offsup/query.action">资产管理</a></li>
		                            <li><a href="http://localhost:7777/oa/warehouse/query.action">库存管理</a></li>                        
		                    	</ul>
		                    </li>
						
                    
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							<li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">外派人才<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                              <li><a href="http://localhost:7777/oa/expinf/query.action">外派人才信息管理</a></li>
								      <li><a href="http://localhost:7777/oa/assigncom/query.action">外派人才公司管理</a></li>                   
		                    	</ul>
		                    </li>
						
						
                  	 
                    
					  <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							  <li class="dropdown">
			                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">车辆管理<span class="caret"></span></a>
			                    	<ul class="dropdown-menu">
			                    		
			                    		  <li><a href="http://localhost:7777/oa/busorder/query.action">车辆预约</a></li>
			                    		  
			                              <li><a href="http://localhost:7777/oa/bus/query.action">车辆管理</a></li>                           
										  <li><a href="http://localhost:7777/oa/busrecord/query.action">用车记录</a></li>                         
			                    		
			                    	</ul>
		                   	  </li>
                   
				<li><a href="http://localhost:7777/oa/bbs/queryByTime1.action?source=1">公司公告</a></li>
				<li><a href="#">手机客户端</a></li>
			</ul>

			<div class="clear"></div>
		</div>
	</div>


<div class="container">

	 <!--导航路径-->
	  <ul class="breadcrumb">
	    <li><a href="#">当前位置</a><span class="divider">：</span></li>
	    <li><a href="http://localhost:7777/oa/pages/index.jsp">中软OA系统</a><span class="divider">/</span></li>
	    <li><a href="#">个人信息</a><span class="divider">/</span></li>
	    <li class="active">查找员工</li>
	  </ul>

	<div class="row">
		    <!--左侧导航菜单-->
		    <div class="span4">
		      <ul class="left_nav_menu">
		        <li><a href="http://localhost:7777/oa/emp1/read.action">维护个人信息</a></li>
		        <li><a href="http://localhost:7777/oa/pages/searchOtherEmp.jsp">查找员工</a></li>
		      </ul>
		    </div>
	    
	    <div class="span8" style="min-height: 400px;">
              <form name="form2" method="post" action="../emp1/queryByOther.action">
                <table class="table table-striped" border="0" width="100%">
                  <tbody><tr>
        
                    <td><input name="deptName" id="deptName" type="text">
                      <input name="deptId" id="deptId" type="hidden">
                      <input name="button" id="deptBtn" value="选择部门" class="btn btn-primary" type="button"></td>
                  </tr>
                  <tr>
               
                    <td><input name="jobName" id="jobName" type="text">
                    <input name="jobId" id="jobId" type="hidden">
                    <input name="button2" id="jobBtn" value="选择职务" class="btn btn-primary" type="button"></td>
                  </tr>
                  <tr>
   
                    <td><input name="emp1Name" id="emp1Name" placeholder="请输入员工姓名" type="text" width="50%"></td>
                  </tr>
                </tbody></table>
                <input value="搜索员工" class="btn btn-primary btn-large" type="submit">
          </form>
      </div>
 </div>
	
	<!-- 网页底部 -->
	

	<!--end-content-->
	<div class="footer-bg">
		<div class="wrap">
			<div class="footer">
			    	<p><a href="http://www.dletc.com.cn/" style="color:#A99439; font-size:16px; line-height: 2.4em;">网站首页</a>&nbsp;|&nbsp;<a href="http://www.chinasofti.com/" target="_blank" style="color:#A99439; font-size:16px; line-height: 2.4em;">中软国际</a>&nbsp;|&nbsp;<a href="http://www.chinasofti.com/" target="_blank" style="color:#A99439; font-size:16px; line-height: 2.4em;">教育集团</a>&nbsp;|&nbsp;<a href="http://www.dletc.com.cn/ContactUs.html" style="color:#A99439; font-size:16px; line-height: 2.4em;">联系我们</a></p>
			  	    <p>大连中心：(86-411)84755574&nbsp; 沈阳中心：(86-24)22512500&nbsp; 公司传真：(86-411)84755568</p>
			  	    <p>地址：辽宁省大连市高新园区宏川东路20号黄泥川天地软件园金枫楼三层</p>
					<p class="w3-link">
						Copyright 2009-2014 <a href="http://dletc.com.cn/">dletc.com.cn</a> all rights reserved
					</p>
					<p class="w3-link">
						 网站备案号 : 辽ICP备09019147号-1
					</p>
			</div>
		</div>
	</div>
	
	
</div>


<div id="mask" style="width:100%; height:100%; position:fixed; top:0; left:0; z-inde:1999;background:#cccccc; filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity:0.5;"></div>
<div id="maskTop" style="width: 600px; height: 500px; border: #999999 1px solid; background: #fff; color: #333; position: fixed; top: 50%; left: 50%; margin-left: -300px; margin-top: -250px; z-index: 2999; filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,direction=120,strength=4); -moz-box-shadow: 2px 2px 10px #909090; -webkit-box-shadow: 2px 2px 10px #909090; box-shadow: 2px 2px 10px #909090;"><div id="maskTitle" style="height: 50px; line-height: 50px; font-family: Microsoft Yahei; font-size: 20px; color: #333333; padding-left: 20px; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAyCAYAAABlG0p9AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABvSURBVEhL1cq5DcAwDENR7T+sL9lOOoUbkCoCwwKewOJbiGe+31BkwgeDM18YgrPhxuBs4CkS4cQQZMKFwd0R+gzFJaFjcD+EfXgoMuHA4O4Iew/FJWHD4BJhwxDoYcNTIKwY3NGwYggQFgxODEt8xO1/6P+HHxEAAAAASUVORK5CYII=); border-bottom: 1px solid #999999; position: relative;">选择部门
<div id="popWinClose" style="width: 28px; height: 28px; cursor: pointer; position: absolute; top: -12px; right: -9px; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAJeSURBVEhLvZbPq2lRFMf9B4bSTTIxZiBSMlCI9ycoKX+Bod7w/il3YIL4NyhFmYmBKD2Sp0ix3vqes/e529n74t33Op9astevr3PO2tvxvcLtdquzfbAtyAV8IlYX6d+DG7yxvbP9Fr2fglxR8ybavAYX/GD7Jfr8NahFD9HuMZz4U9Q5jEYjqlarFA6HiVPuDD7EkOMGvTjna9xi8/mcstmsJvKVIRc1Kl+K4haIHItut0t+v9/Y+JGhBrUq6M2xT9iBAXGeGQrY/U+miqI3NNhvw4t3EbNuyXeuzG3ood5eaLDfhhfO6JueWbPZtGKFQkGLNRoN2u/3FI/HtRh6SaDBPkusLnzWpMlkaRC7XC5WfLVaUTqddmKVSoVOp5MVG4/HlEql7mph6vRCC4IfYm2Nt7vAzW63o2KxSLVaja7Xq/DatFotrR49JdCCoHNcmfZZPp+n9XotMmxwVVwnVjbD4ZAikYhWj54SaN1dgjtZWiaToe12K7J0JpOJUUyaykuCsFwuR8fjUWR+slgsKBAIGGukqbwsiGdmElwul5RIJIw10lReEsQ0ns9nkaVzOBys226qhak8HRrsM7ktJLPZjDabjVjZYLBKpZJWrw0NfzzcFvj1KtPp1HpmsVjM2iIq/X5fqzdti4cbHycINjUYDAYUCoWcGA4BHAag1+tRMBi8q4VpGx/wl4dHWzKZpHa7TdFoVIuVy2XqdDrGSTUebYAXnh/e3v49AXZ49wcs4YB3rxgStyjApGG8TfsUPsTUaZQ8FZPgFrB585oo4QLvXoTdcIP/9Krv8/0BDUSOirKWU6wAAAAASUVORK5CYII=);"></div></div>
<iframe src="QueryDeptSmall.jsp" frameborder="0" height="448" scrolling="no" width="600">
</iframe></div></body></html>