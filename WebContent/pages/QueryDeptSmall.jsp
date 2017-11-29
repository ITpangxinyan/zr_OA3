<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/zr_OA1/css/bootstrap.css">
<link href="/zr_OA1/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/zr_OA1/js/jquery.js"></script>
<script type="text/javascript">

	var deptId;
	var deptName;
	
	//返回值到父窗口
	function returnPopValue() {		
				
		$(window.parent.document).find('#deptId').val(deptId);
		$(window.parent.document).find('#deptName').val(deptName);	
		$(window.parent.document).find('#popWinClose').click();
	}
	
	//关闭当前窗口
	function closeWin(){
		$(window.parent.document).find('#popWinClose').click();
	}
	
	$(document).ready(function(){
		$('input[name="ids"]').click(function(){
			deptId = $.trim( $(this).parent().parent().find('td').eq(1).text() );
			deptName = $.trim( $(this).parent().parent().find('td').eq(2).text() );			
		});		
	});
</script>
</head>
<body>


	    	<table class="table table-striped">
			  <tbody><tr>
			    <th height="24" width="100">选择</th>
			    <th height="24" width="129">部门编号</th>
			    <th height="24" width="177">部门名称</th>   
			  </tr>
			
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">67</td>
			    <td height="24" width="177">清洁部</td>   
			  </tr>
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">66</td>
			    <td height="24" width="177">车辆管理处</td>   
			  </tr>
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">65</td>
			    <td height="24" width="177">技术部</td>   
			  </tr>
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">64</td>
			    <td height="24" width="177">总裁办</td>   
			  </tr>
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">63</td>
			    <td height="24" width="177">后勤处</td>   
			  </tr>
			  
			  <tr>
			    <td height="24" width="100"><input name="ids" type="radio"></td>
			    <td height="24" width="129">62</td>
			    <td height="24" width="177">行政部</td>   
			  </tr>
			  
			</tbody></table>
			
			<div class="text-center">			
				<input value="确定" class="btn btn-primary" onclick="history.back();" type="button">
				<input value="取消" class="btn" onclick="window.history.go(-1);" type="button">
			</div>
			
			<!-- 分页条 -->
			
    

<div class="pagination" style="text-align: center;">
	<ul>
		<a href="#">共9条数据，每页6条，共2页，当前是第1页</a>	
	</ul>
</div>
    
<div class="pagination pagination-centered" style="text-align: center;">
	<ul>
		<a href="#">首页</a>
		<a href="#">上页</a>
				  			
		  	<a href="#">1</a> 		  			
				  			
		  	<a href="#">2</a> 		  			
				
		<a href="#">下页</a>
		<a href="#">末页</a>		
	</ul>
</div>
		    
	


</body></html>