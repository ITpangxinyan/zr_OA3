<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class=" js rgba boxshadow csstransitions"><head>
<title>中软OA首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="/zr_OA1/css/style.css" rel="stylesheet" type="text/css" media="all">
<!--slider-->
<script src="/zr_OA1/js/modernizr.js"></script>
<!-- jQuery -->
<script src="/zr_OA1/js/jquery.js"></script>
<script src="/zr_OA1/js/bootstrap.js"></script>
<script>
	window.jQuery || document.write('<script src="../js/libs/jquery-1.7.min.js">\x3C/script>')
</script>
<!-- FlexSlider -->
<script defer="defer" src="/zr_OA1/js/jquery_002.js"></script>
<script type="text/javascript">
	$(function() {
		SyntaxHighlighter.all();
	});
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			start : function(slider) {
				$('body').removeClass('loading');
			}
		});
	});
</script>
</head>
<body>
	<div class="wrap">
		<div class="top-hader">
			<div class="top-header-left">
				<p>ICSS中软OA	 &nbsp;&nbsp;&nbsp;电话:(86-411)84755574</p>
			</div>
			<div class="top-header-right">
				<p>
					<a href="#">用户名：szz</a> &nbsp;&nbsp;&nbsp;
					<a href="LoginOut.action">切换用户</a>&nbsp;&nbsp;&nbsp;
					<a href="LoginOut.action">退出登录</a>&nbsp;&nbsp;&nbsp;
					<a href="个人信息-查看.htm">查看个人信息</a>           
				</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="header">
			<div class="logo">
				<a href="http://localhost:7777/oa/pages/index.jsp"><img src="/zr_OA1/img/1.bmp" alt="" title="logo"></a>
			</div>
		</div>
	</div>
	<div class="menu-bg">
		<div class="wrap">
			<ul class="nav ">
				<li class="active"><a href="首页.htm">首页</a></li>
				<li><a href="工作安排-自己工作安排.htm">工作安排</a></li>
				<li><a href="名片夹-分类.htm">名片夹</a></li>
				<li><a href="在线信息-新建留言.htm">在线信息</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">个人文件夹<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="文件夹-个人.htm">文件夹列表</a></li>
						<li><a href="文件夹-共享.htm">共享目录&nbsp;&nbsp;</a></li>
					</ul>
				</li>
				
				 <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">会议管理<span class="caret"></span></a>
					<ul class="dropdown-menu">
	                    			
	                             		 <li><a href="会议室-会议室查询.htm">会议室管理</a></li>
	                             	   
							      <li><a href="会议预约-查询.htm">会议预约&nbsp;&nbsp;</a></li>
							      <li><a href="会议记录-查询.htm">会议记录&nbsp;&nbsp;</a></li>
							      
							     	 <li><a href="设备-查询.htm">设备管理&nbsp;&nbsp;</a></li>  
							                            
	            	</ul>
				</li>
					
				
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
					
						   <li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统管理<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                              <li><a href="selectAllDep.action?pageNum=1">部门管理</a></li>
								      <li><a href="selectAllPos.action?pageNum=1">职务管理</a></li>
								      <li><a href="selectAllEmployee.action?pageNum=1">员工管理</a></li>
								      <li><a href="公告-查询.htm">公告管理</a></li>                         
		                    	</ul>
		                    </li>
						
					
					  
                   
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							 <li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">资产管理<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                            <li><a href="资产.htm">资产管理</a></li>
		                            <li><a href="库存.htm">库存管理</a></li>                        
		                    	</ul>
		                    </li>
						
                    
                    <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							<li class="dropdown">
		                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">外派人才<span class="caret"></span></a>
		                    	<ul class="dropdown-menu">
		                              <li><a href="外派人才-查询.htm">外派人才信息管理</a></li>
								      <li><a href="外派公司.htm">外派人才公司管理</a></li>                   
		                    	</ul>
		                    </li>
						
						
                  	 
                    
					  <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
							  <li class="dropdown">
			                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">车辆管理<span class="caret"></span></a>
			                    	<ul class="dropdown-menu">
			                    		
			                    		  <li><a href="车辆预约-查询.htm">车辆预约</a></li>
			                    		  
			                              <li><a href="车辆-查询.htm">车辆管理</a></li>                           
										  <li><a href="车辆记录-查询.htm">用车记录</a></li>                         
			                    		
			                    	</ul>
		                   	  </li>
							  
						    
                    
				<li><a href="公司公告.htm">公司公告</a></li>
				
				<li><a href="#">手机客户端</a></li>
			</ul>

			<div class="clear"></div>
		</div>
	</div>
	<div class="wrap">
		<div class="flexslider">
			<div class="flex-viewport" style="overflow: hidden; position: relative;">
				
			</div>
		<div style="overflow: hidden; position: relative;" class="flex-viewport"><ul class="slides" style="width: 1000%; transition: all 0.6s ease 0s; transform: translate3d(-3213px, 0px, 0px);"><li class="clone" style="width: 1071px; float: left; display: block;">
						<img src="/zr_OA1/img/slider3.jpg" alt="">
					</li>
					<li class="clone" style="width: 1071px; float: left; display: block;">
						<img src="/zr_OA1/img/slider1.jpg" alt="">
					</li>
					<li style="width: 1071px; float: left; display: block;" class="">
						<img src="/zr_OA1/img/slider2.jpg" alt="">
					</li>
					<li class="flex-active-slide" style="width: 1071px; float: left; display: block;">
						<img src="/zr_OA1/img/slider3.jpg" alt="">
					</li>
				<li class="clone" style="width: 1071px; float: left; display: block;">
						<img src="/zr_OA1/img/slider1.jpg" alt="">
					</li></ul></div><ol class="flex-control-nav flex-control-paging"><li><a class="">1</a></li><li><a class="">2</a></li><li><a class="flex-active">3</a></li></ol><ul class="flex-direction-nav"><li><a class="flex-prev" href="#">Previous</a></li><li><a class="flex-next" href="#">Next</a></li></ul></div>
	</div>
	<!--content-->
	<div class="content-bg">
		<div class="wrap">
			<div class="content">
				<div class="main">
					<h2 class="">welcome</h2>
					<div class="btn">
						<a href="http://localhost:7777/oa/emp1/read.action"><img src="/zr_OA1/img/btn.png" alt="">进入中软国际</a>
					</div>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/emp1/read.action"><img src="/zr_OA1/img/pic1.jpg" alt=""></a>
							<h4>个人信息</h4>
						</div>
						<p>查看、编辑你的个人信息，查看其他员工的信息。员工利用该功能可以维护系统允许个人维护的信息。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/schedule/query.action?scheduleEmpid=1"><img src="/zr_OA1/img/pic3.jpg" alt=""></a>
							<h4>工作安排</h4>
						</div>
						<p>为员工提供日程安排维护和查询功能，系统根据提示内容发布到该员工的日程安排中。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/Card/query.action"><img src="/zr_OA1/img/pic2.jpg" alt=""></a>
							<h4>名片夹</h4>
						</div>
						<p>员工对自己的通讯录进行管理。可设置私有或共享。可直接点击发邮件。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/pages/message/AddMessage.jsp"><img src="/zr_OA1/img/pic4.jpg" alt=""></a>
							<h4>在线信息</h4>
						</div>
						<p>利用系统短消息功能发送的通知。用户点击在线信息后，弹出新窗口显示该信息的详细内容。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/pages/folderMana/QueryFolder.jsp"><img src="/zr_OA1/img/pic1.jpg" alt=""></a>
							<h4>个人文件夹</h4>
						</div>
						<p>在服务器上提供个人文件夹；文件夹大小由系统管理员设定；个人可将文件上传至个人文件夹中；个人文件夹可由使用者设置共享功能</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					
					
					 <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
				
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/meetingorder/query.action"><img src="/zr_OA1/img/pic3.jpg" alt=""></a>
							<h4>会议管理</h4>
						</div>
						<p>会议发起人能够查询到别的系统的会议室的安排情况，以便发起会议。由管理员对会议室进行管理，员工使用会议室时进行预约，由管理员统一安排。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
				
				
				 <!-- 拥有以下任意一种角色的用户可以看到的内容 -->
					
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/emp/query.action"><img src="/zr_OA1/img/pic2.jpg" alt=""></a>
							<h4>系统管理</h4>
						</div>
						<p>系统管理员进行后台管理的模块，包括组织管理、安全控制。维护的是企业、公司的组织结构、角色划分、人员信息的功能。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					
					
					
					<!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/offsup/query.action"><img src="/zr_OA1/img/pic4.jpg" alt=""></a>
							<h4>资产管理</h4>
						</div>
						<p>办公用品管理人员通过系统维护办公用品列表，库存管理，办公用品分配情况，生成办公用品消耗月报表</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
						
						
						
				<!-- 拥有以下任意一种角色的用户可以看到的内容 -->
						
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/expinf/query.action"><img src="/zr_OA1/img/pic1.jpg" alt=""></a>
							<h4>外派人才</h4>
						</div>
						<p>下属信息技术公司对外派人员和外派公司进行管理，需要建立人才库，外派合作企业库，管理外派人才详细信息。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					
			
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/busorder/query.action"><img src="/zr_OA1/img/pic3.jpg" alt=""></a>
							<h4>车辆管理</h4>
						</div>
						<p>员工申请外出用车，行政部批准后，由车队主管安排车辆。</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<div class="grid box">
							<a href="http://localhost:7777/oa/bbs/queryByTime1.action?source=1"><img src="/zr_OA1/img/pic2.jpg" alt=""></a>
							<h4>公司公告</h4>
						</div>
						<p>管理员发布系统公告，按时间顺序排列，可设置置顶公告，并给与手机客户端端提供数据访问接口</p>
						<div class="btn">
							<a href="http://localhost:7777/oa/pages/details.html"><img src="/zr_OA1/img/btn.png" alt="">read
								more</a>
						</div>
					</div>
					

				</div>
			</div>
		</div>
	</div>
	<!--end-content-->
	<div class="footer-bg">
		<div class="wrap">
			<div class="footer">
			    	<p><a href="http://www.dletc.com.cn/" style="color:#990; font-size:16px; line-height: 2.4em;">网站首页</a>&nbsp;|&nbsp;<a href="http://www.chinasofti.com/" target="_blank" style="color:#990; font-size:16px; line-height: 2.4em;">中软国际</a>&nbsp;|&nbsp;<a href="http://www.chinasofti.com/" target="_blank" style="color:#990; font-size:16px; line-height: 2.4em;">教育集团</a>&nbsp;|&nbsp;<a href="http://www.dletc.com.cn/ContactUs.html" style="color:#990; font-size:16px; line-height: 2.4em;">联系我们</a></p>
			  	    <p>大连中心：(86-411)84755574&nbsp; 沈阳中心：(86-24)22512500&nbsp; 公司传真：(86-411)84755568</p>
			  	    <p>地址：辽宁省大连市高新园区宏川东路20号黄泥川天地软件园金枫楼三层</p>
			</div>
		</div>
	</div>
	<div class="footer1-bg">
		<div class="wrap">
			<div class="footer1">
				<p class="w3-link">
					Copyright 2009-2014 <a href="http://dletc.com.cn/">dletc.com.cn</a> all rights reserved
				</p>
				<p class="w3-link">
					 网站备案号 : 辽ICP备09019147号-1
				</p>
			</div>
		</div>
	</div>

</body></html>