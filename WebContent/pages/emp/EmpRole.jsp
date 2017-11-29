<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html class=" js rgba boxshadow csstransitions"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/zr_OA1/css/bootstrap.css">
<link href="/zr_OA1/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/zr_OA1/css/jquery.css">
<script type="text/javascript" src="/zr_OA1/js/jquery.js"></script>
<script type="text/javascript" src="/zr_OA1/js/bootstrap.js"></script>
<script type="text/javascript" src="/zr_OA1/js/Validform_v5.js"></script>
<script type="text/javascript" src="/zr_OA1/js/jquery_002.js"></script>
<script type="text/javascript" src="/zr_OA1/js/popwin.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		//一行代码搞定，提交表单的时候会自动触发验证程序
		$('#form1').Validform({
			tiptype:3	
		});
		//选择角色模态窗口
		$('#roleBtn').click(function(){			
			popWin.showWin("600","500","选择角色","#");	
			
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
		<li><a href="#">员工管理</a><span class="divider">/</span></li>
		<li class="active">设置权限</li>    
	</ul>

	<div class="row">
	
		<div class="span4">
	    	<!-- 左侧导航菜单 -->
<ul class="left_nav_menu">
	
      <li><a href="部门-查询.htm">部门管理</a></li>
      <li><a href="职务.htm">职务管理</a></li>
      <li><a href="员工-查询.htm">员工管理</a></li>
      <li><a href="公告-查询.htm">公告管理</a></li>      
    
</ul>	


	    </div>
	    
	    <div class="span8" style="min-height: 400px;">
	    	<h3>员工信息</h3>
              <form name="form1" method="post" action="#">
                <table class="table table-striped" border="0" width="100%">
                  <tbody><tr>
                    <td width="24%">员工编号</td>
                    <td width="76%"><input name="empId" id="empId" readonly="readonly" value="${employee.id }" type="text"></td>
                  </tr>
                  <tr>
                    <td>姓名</td>
                    <td><input name="empName" id="empName" value="${employee.name }" readonly type="text"></td>
                  </tr>
                   </tbody></table>
             <table class="table table-bordered">
              <tbody><tr>          
                <th>员工角色</th>
                <th>操作</th>
              </tr>
              <c:forEach items="${list }" var="role">
              <tr>
                <td>${role.name}</td>
                 <td>
                	<a href="#">删除</a>
                </td>
              </tr>
              </c:forEach>
              
             
              
            </tbody></table>
			<table>
			 <tbody><tr>
			        <td>角色</td>
			        <td>
			        	<input name="roleName" id="roleName" type="text">
			       		<input name="roleId" id="roleId" type="hidden">
				        <input name="button3" id="roleBtn" value="选择角色" class="btn btn-primary" type="button">
				        <input value="增加角色" class="btn btn-primary" type="submit">
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