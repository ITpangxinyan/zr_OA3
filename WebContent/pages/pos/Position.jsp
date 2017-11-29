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
			
	$(document).ready(function(e) {
        
		//增加数据
		$('#insertBtn').click(function(e) {
            $('#form1').attr('action','savePos.action');
			$('#form1').submit();
        });
		
		//修改数据
		$('#updateBtn').click(function(e) {
            $('#form1').attr('action','updatePos.action');
			$('#form1').submit();
        });
		
		//删除数据
		$('#deleteBtn').click(function(e) {
			var flag = window.confirm("确定要删除此职务吗");
			if (flag) {
				$('#form1').attr('action','deletePos.action');
				$('#form1').submit();
			}           
        });
		
		//清空表单
		$('#clearBtn').click(function(e) {
            $('#jobId').val('');
		    $('#jobName').val('');
		    $('input[name="ids"]').prop('checked',false);
			$('#updateBtn').prop('disabled',true);
		    $('#deleteBtn').prop('disabled',true);
        });
		
		//选择单选设置表单数据
		$('input[name="ids"]').click(function(e) {
			
           var jobId = $(this).parent().parent().find('td').eq(1).text();
		   var jobName = $(this).parent().parent().find('td').eq(2).text();
		   
		   $('#jobId').val($.trim(jobId));
		   $('#jobName').val($.trim(jobName));
		   
		   $('#updateBtn').prop('disabled',false);
		   $('#deleteBtn').prop('disabled',false);
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
		<li><a href="#">职务管理</a><span class="divider">/</span></li>
		<li class="active">职务列表</li>    
	</ul>

	<div class="row">
	
		<div class="span3">
	    	<!-- 左侧导航菜单 -->
	    	

<ul class="left_nav_menu">
	
      <li><a href="selectAllDep.action?pageNum=1">部门管理</a></li>
      <li><a href="selectAllPos.action?pageNum=1">职务管理</a></li>
      <li><a href="selectAllEmployee.action?pageNum=1">员工管理</a></li>
      <li><a href="公告-查询.htm">公告管理</a></li>      
    
</ul>
	    </div>
	    	    	    
	    <div class="span9" style="min-height: 400px;">
	    		    
			<table class="table table-bordered">
              <tbody><tr>
                <th>选择</th>
                <th>职务编号</th>
                <th>职务名称</th>
              </tr>
             <c:forEach items="${list}" var="position">
                <tr>
                <td><input name="ids" type="radio"></td>
                <td>${position.id }</td>
                <td>${position.name}</td>
              </tr>
             </c:forEach>
             
             
              
              
              
            </tbody></table>
            
            <!-- 分页条 -->
			
    


    
<jsp:include page="/pages/public/Pager.jsp"></jsp:include>

            
            <form id="form1" name="form1" method="post" action="">
           	  <table class="table table-bordered">
            	  <tbody><tr>
            	    <td>职务编号</td>
            	    <td><input name="id" id="jobId" readonly="readonly" type="text" ></td>
            	    <td>职务名称</td>
            	    <td><input name="name" id="jobName" type="text"></td>
          	    </tr>
            	  <tr>
            	    <td colspan="4" style="text-align: center">
                    	<input name="button" id="insertBtn" value="增加" class="btn btn-primary" type="button">
                        <input name="button2" id="updateBtn" value="修改" class="btn btn-primary" disabled="disabled" type="button">
                        <input name="button3" id="deleteBtn" value="删除" class="btn btn-primary" disabled="disabled" type="button">
                        <input name="button4" id="clearBtn" value="清空" class="btn btn-primary" type="button">
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