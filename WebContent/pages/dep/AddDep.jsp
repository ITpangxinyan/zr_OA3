<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class=" js rgba boxshadow csstransitions"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/zr_OA1/css/bootstrap.css">
<link href="/zr_OA1/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/zr_OA1/js/jquery.js"></script>
<script type="text/javascript" src="/zr_OA1/js/bootstrap.js"></script>
<script type="text/javascript" src="/zr_OA1/js/Validform_v5.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
	    
		//一行代码搞定，提交表单的时候会自动触发验证程序
		$('#form1').Validform({
			tiptype:3	
		});
		
	});
</script>
</head>
<body>

<!-- 网页头部 -->


<jsp:include page="/pages/public/head.jsp"></jsp:include>

<div class="container">

	<!--导航路径-->
	<ul class="breadcrumb">
		<li><a href="#">当前位置</a><span class="divider">：</span></li>
		<li><a href="#">中软OA系统</a><span class="divider">/</span></li>
		<li><a href="#">系统管理</a><span class="divider">/</span></li>
		<li><a href="#">部门管理</a><span class="divider">/</span></li>
		<li class="active">增加部门</li>    
	</ul>

	<div class="row">
	
		<div class="span4">
<!-- 左侧导航菜单 -->
	    	

<ul class="left_nav_menu">
	
      <li><a href="selectAllDep.action?pageNum=1">部门管理</a></li>
      <li><a href="selectAllPos.action?pageNum=1">职务管理</a></li>
      <li><a href="selectAllEmployee.action?pageNum=1">员工管理</a></li>
      <li><a href="公告-查询.htm">公告管理</a></li>      
    
</ul>
	    </div>
	    
	    <div class="span6" style="min-height: 400px;">
	    	<h4>增加新部门</h4>
	        <form id="form1" name="form1" method="post" action="AllDep.action">
	          <table class="table">	           	           
	            <tbody><tr>
	              <td height="24" align="center">部门名称</td>
	              <td height="24"><input name="name" datatype="s1-10" errormsg="部门名称最多10字符" type="text"><span class="Validform_checktip"></span></td>
	            </tr>
	            <tr>
	              <td height="24" align="center">部门地址</td>
	              <td height="24"><input name="location" datatype="s1-20" errormsg="部门地址最多20字符" type="text"><span class="Validform_checktip"></span></td>
	            </tr>
	                       <div align="center"><h1>${log}</h1></div>
	            <tr>
	              <td colspan="2" height="24" align="center">
	              	<input name="button" id="button" value="提交" class="btn btn-primary" type="submit">
	                <input name="button2" id="button2" value="取消" onclick="history.back();" class="btn btn-success" type="button">
	              </td>
	            </tr>
	          </tbody></table>
	        </form>
	    </div>
	</div>
	
	<!-- 网页底部 -->
	

	<!--end-content-->
	<jsp:include page="/pages/public/bottom.jsp"></jsp:include>
	

</div>


</body></html>