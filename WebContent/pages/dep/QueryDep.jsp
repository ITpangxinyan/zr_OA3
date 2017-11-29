

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
	function del(deptId) {
		var flag = window.confirm("确定要删除此部门吗");
		if (flag) {
			location.href = "deleteDep.action?deptId="+deptId+"" ;
		}
	}
	//修改
	
	function updateBrandById(name) {  
        var param = "name=" + name;  
        var url = "RedUpdateDep.action?" + param;  
          
        //生成自定义表单提交js的超链接，使用post请求  
        var formObject = document.createElement('form');  
        document.body.appendChild(formObject);  
        formObject.action = url;  
        formObject.setAttribute('method', 'post');  
        formObject.submit();   
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
		<li><a href="#">部门管理</a><span class="divider">/</span></li>
		<li class="active">部门列表</li>    
	</ul>

	<div class="row">
	
		<div class="span3">
	    	<!-- 左侧导航菜单 -->
	    	

<ul class="left_nav_menu">
	
      <li><a href="selectAllDep.action?pageNum=1">部门管理</a></li>
      <li><a href="selectAllPos.action?pageNum=1">职务管理</a></li>
      <li><a href="selectAllEmployee.action?pageNum=1">员工管理</a></li>
      <li><a href="#">公告管理</a></li>      
    
</ul>
	    </div>
	    	    	    
	    <div class="span9" style="min-height: 400px;">
	    		    
			<table class="table table-striped">
			  <tbody><tr class="info">
			    <th height="24" width="100">部门编号</th>
			    <th height="24" width="129">部门名称</th>
			    <th height="24" width="177">部门地址</th>
			    <th height="24" width="176">操作</th>
			  </tr>
			  
			  
			  <c:forEach items="${list}" var="department">
			    <tr>
			    <td height="24">${department.id}</td>
			    <td height="24">${department.name}</td>
			    <td height="24">${department.location}</td>
			    <td height="24" align="center"><a href="#" onclick="javascript:updateBrandById('${department.name}');">修改</a> 
			    <a href="javascript:del(${department.id});">删除</a></td>
			    </tr>
			  </c:forEach>
			  
			  
			  
			  
			</tbody></table>
			
			<!-- 分页条 -->
			
    

 <jsp:include page="/pages/public/Pager.jsp"></jsp:include>
		
			
			<p align="center"><a href="RedAllDep.action" class="btn btn-primary btn-large">增加新部门</a></p>
	    </div>
	</div>
	
	<!-- 网页底部 -->
	

	<!--end-content-->
	<jsp:include page="/pages/public/bottom.jsp"></jsp:include>
	

</div>


</body></html>