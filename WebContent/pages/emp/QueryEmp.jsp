<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class=" js rgba boxshadow csstransitions"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/zr_OA1/css/bootstrap.css">
<link href="/zr_OA1/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/zr_OA1/js/jquery.js"></script>
<script type="text/javascript" src="/zr_OA1/js/bootstrap.js"></script>
<script type="text/javascript">
	//删除确认                             
	function del(empId) {
		var flag = window.confirm("确定要删除此员工吗");
		if (flag) {
			location.href = "deleteEmployee.action?empId="+empId ;
		}
	}
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
		<li class="active">员工列表</li>    
	</ul>

	<div class="row">
	
		<div class="span3">
	    	<!-- 左侧导航菜单 -->
	    	

<ul class="left_nav_menu">
	
      <li><a href="selectAllDep.action?pageNum=1">部门管理</a></li>
      <li><a href="selectAllPos.action?pageNum=1">职务管理</a></li>
      <li><a href="electAllEmployee.action?pageNum=1">员工管理</a></li>
      <li><a href="公告-查询.htm">公告管理</a></li>      
    
</ul>
	    </div>
	    	    	    
	    <div class="span9" style="min-height: 400px;">
	    
        	<p align="right"><a href="RedsaveEmployee.action" class="btn btn-large btn-primary">增加新员工</a></p>
        	
            <table class="table table-striped">
              <tbody><tr>
                <th>员工编号</th>
                <th>员工姓名</th>
                <th>所在部门</th>
                <th>职务名称</th>
                <th>操作</th>
              </tr>
             
              <c:forEach items="${list }" var="employee">
              <tr>
                <td>${employee.nameid}</td>
                <td>${employee.name}</td>
                <td>${employee.department.name }</td>
                <td>${employee.position.name }</td>
                <td>
                	<a href="selectEmployee.action?empId=${employee.id}">查看详细</a> 
                	<a href="javascript:del(${employee.id});">删除</a>
                	<a href="slectEmpRol.action?id=${employee.id }">设置权限</a> 
                </td>
              </tr>
              </c:forEach>
             
             
              
              
             
              
            </tbody></table>
        
        	<!-- 分页条 -->
			
    

 <jsp:include page="/pages/public/Pager.jsp"></jsp:include>
					
			
      </div>
	</div>
	
	<!-- 网页底部 -->
	
<jsp:include page="/pages/public/bottom.jsp"></jsp:include>


</body></html>