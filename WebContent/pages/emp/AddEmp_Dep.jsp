<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="js rgba boxshadow csstransitions">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="/zr_OA1/css/bootstrap.css">
<link href="/zr_OA1/css/common.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="/zr_OA1/css/jquery.css">
	<link rel="stylesheet" type="text/css"
	href="/zr_OA1/css/jquery.datetimepicker.css">
<script type="text/javascript"
	src="/zr_OA1/js/jquery.js"></script>
<script type="text/javascript"
	src="/zr_OA1/js/bootstrap.js"></script>
<script type="text/javascript"
	src="/zr_OA1/js/Validform_v5.js"></script>
<script type="text/javascript"
	src="/zr_OA1/js/jquery_002.js"></script>
	<script type="text/javascript"
	src="/zr_OA1/js/Validform_v5.3.2.js"></script>
	<script type="text/javascript"
	src="/zr_OA1/js/jquery.datetimepicker.js"></script>
<script type="text/javascript"
	src="/zr_OA1/js/popwin.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {

		//一行代码搞定，提交表单的时候会自动触发验证程序
		$('#form1').Validform({
			tiptype : 3
		});

		//日历框
		$('#empBirthdate').datetimepicker({
			lang : 'ch',
			timepicker : false,
			format : 'Y-m-d'
		});

		//选择部门模态窗口
		$('#deptBtn').click(function() {
			popWin.showWin("600", "500", "选择部门", "test.jsp");
		});

		//选择职务模态窗口
		$('#jobBtn').click(function() {
			popWin.showWin("600", "500", "选择职务", "a.action");
		});
		//选择角色模态窗口
		$('#roleBtn').click(function() {
			popWin.showWin("600", "500", "选择角色", "#");
		});

	});
</script>
</head>
<body>

<!-- 网页头部 -->


<jsp:include page="/pages/public/head.jsp"></jsp:include>

<div class="container"><!--导航路径-->
<ul class="breadcrumb">
	<li><a href="#">当前位置</a><span class="divider">：</span></li>
	<li><a href="#">中软OA系统</a><span class="divider">/</span></li>
	<li><a href="#">系统管理</a><span class="divider">/</span></li>
	<li><a href="#">员工管理</a><span class="divider">/</span></li>
	<li class="active">增加新员工</li>
</ul>

<div class="row">

<div class="span4"><!-- 左侧导航菜单 -->


<ul class="left_nav_menu">

	<li><a href="部门-查询.htm">部门管理</a></li>
	<li><a href="职务.htm">职务管理</a></li>
	<li><a href="员工-查询.htm">员工管理</a></li>
	<li><a href="公告-查询.htm">公告管理</a></li>

</ul>
</div>

<div class="span8" style="min-height: 400px;">
<h3>请填写新员工信息</h3>
<form name="form1" id="form1" method="post" action="员工-设置权限.htm">
<table class="table table-striped" border="0" width="100%">
	<tbody>
		<tr>
			<td width="24%">员工编号</td>
			<td width="76%"><input name="id" id="empId"
				readonly="readonly" type="text" value="${nameid}"></td>
		</tr>
		<tr>
			<td>姓名</td>
			<td><input name="name" id="empName" datatype="*"
				errormsg="不能为空！" type="text"><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>登陆用户名</td>
			<td><input name="nameid" id="username" placeholder="员工登陆账号"
				datatype="*" errormsg="不能为空！" type="text"><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>登陆密码</td>
			<td><input name="password" id="password" datatype="*"
				errormsg="不能为空！" type="password"><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>性别</td>
			<td><select name="sex">
				<option selected="selected" value="男">男</option>
				<option value="女">女</option>
			</select></td>
		</tr>
		<tr>
			<td>出生日期</td>
			<td><input name="dateOfBirth" id="empBirthdate" type="text"></td>
		</tr>
		<tr>
			<td>电子邮件</td>
			<td><input name="email" id="empEmail" datatype="e"
				errormsg="请正确填写email地址" type="text"><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>办公电话</td>
			<td><input name="telephone" id="empPhone" type="text"></td>
		</tr>
		<tr>
			<td>移动电话</td>
			<td><input name="cellphone" id="empMobile" datatype="m"
				errormsg="请正确填写移动电话" type="text"><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>住址</td>
			<td><input name="address" id="empAddress"
				placeholder="目前家庭详细住址" type="text"></td>
		</tr>
		<tr>
			<td>个人介绍</td>
			<td><textarea name="introduce" rows="7" id="empInfo"
				style="width: 100%;"></textarea></td>
		</tr>
		<tr>
			<td>所属部门</td>
			<td><input name="deptName" id="deptName" datatype="*"
				errormsg="不能为空！" type="text"> <input name="deptId"
				id="deptId" type="hidden"> <input name="button" id="deptBtn"
				value="选择部门" class="btn btn-primary" type="button" ><span
				class="Validform_checktip"></span></td>
		</tr>
		<tr>
			<td>职务</td>
			<td><input name="jobName" id="jobName" datatype="*"
				errormsg="不能为空！" type="text"> <input name="jobId" id="jobId"
				type="hidden"> 
				<a name="button2" id="jobBtn"
				 class="btn btn-primary" type="button" href="selectDep.jsp">选择职务</a>
				<span
				class="Validform_checktip"></span></td>
		</tr>
	</tbody>
</table>
<input value="保存个人信息" class="btn btn-primary btn-large" type="submit">
</form>

</div>
</div>

<!-- 网页底部 --> <!--end-content-->
<jsp:include page="/pages/public/bottom.jsp"></jsp:include>


</div>


<div class="xdsoft_datetimepicker xdsoft_noselect ">
<div class="xdsoft_datepicker active">
<div class="xdsoft_mounthpicker">
<button type="button" class="xdsoft_prev"></button>
<button style="visibility: visible;" type="button"
	class="xdsoft_today_button"></button>
<div class="xdsoft_label xdsoft_month"><span>七月</span>
<div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box">
<div style="margin-top: 0px;">
<div class="xdsoft_option " data-value="0">一月</div>
<div class="xdsoft_option " data-value="1">二月</div>
<div class="xdsoft_option " data-value="2">三月</div>
<div class="xdsoft_option " data-value="3">四月</div>
<div class="xdsoft_option " data-value="4">五月</div>
<div class="xdsoft_option " data-value="5">六月</div>
<div class="xdsoft_option xdsoft_current" data-value="6">七月</div>
<div class="xdsoft_option " data-value="7">八月</div>
<div class="xdsoft_option " data-value="8">九月</div>
<div class="xdsoft_option " data-value="9">十月</div>
<div class="xdsoft_option " data-value="10">十一月</div>
<div class="xdsoft_option " data-value="11">十二月</div>
</div>
<div class="xdsoft_scrollbar">
<div style="display: block; height: 10px; margin-top: 0px;"
	class="xdsoft_scroller"></div>
</div>
</div>
</div>
<div class="xdsoft_label xdsoft_year"><span>2014</span>
<div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box">
<div style="margin-top: 0px;">
<div class="xdsoft_option " data-value="1950">1950</div>
<div class="xdsoft_option " data-value="1951">1951</div>
<div class="xdsoft_option " data-value="1952">1952</div>
<div class="xdsoft_option " data-value="1953">1953</div>
<div class="xdsoft_option " data-value="1954">1954</div>
<div class="xdsoft_option " data-value="1955">1955</div>
<div class="xdsoft_option " data-value="1956">1956</div>
<div class="xdsoft_option " data-value="1957">1957</div>
<div class="xdsoft_option " data-value="1958">1958</div>
<div class="xdsoft_option " data-value="1959">1959</div>
<div class="xdsoft_option " data-value="1960">1960</div>
<div class="xdsoft_option " data-value="1961">1961</div>
<div class="xdsoft_option " data-value="1962">1962</div>
<div class="xdsoft_option " data-value="1963">1963</div>
<div class="xdsoft_option " data-value="1964">1964</div>
<div class="xdsoft_option " data-value="1965">1965</div>
<div class="xdsoft_option " data-value="1966">1966</div>
<div class="xdsoft_option " data-value="1967">1967</div>
<div class="xdsoft_option " data-value="1968">1968</div>
<div class="xdsoft_option " data-value="1969">1969</div>
<div class="xdsoft_option " data-value="1970">1970</div>
<div class="xdsoft_option " data-value="1971">1971</div>
<div class="xdsoft_option " data-value="1972">1972</div>
<div class="xdsoft_option " data-value="1973">1973</div>
<div class="xdsoft_option " data-value="1974">1974</div>
<div class="xdsoft_option " data-value="1975">1975</div>
<div class="xdsoft_option " data-value="1976">1976</div>
<div class="xdsoft_option " data-value="1977">1977</div>
<div class="xdsoft_option " data-value="1978">1978</div>
<div class="xdsoft_option " data-value="1979">1979</div>
<div class="xdsoft_option " data-value="1980">1980</div>
<div class="xdsoft_option " data-value="1981">1981</div>
<div class="xdsoft_option " data-value="1982">1982</div>
<div class="xdsoft_option " data-value="1983">1983</div>
<div class="xdsoft_option " data-value="1984">1984</div>
<div class="xdsoft_option " data-value="1985">1985</div>
<div class="xdsoft_option " data-value="1986">1986</div>
<div class="xdsoft_option " data-value="1987">1987</div>
<div class="xdsoft_option " data-value="1988">1988</div>
<div class="xdsoft_option " data-value="1989">1989</div>
<div class="xdsoft_option " data-value="1990">1990</div>
<div class="xdsoft_option " data-value="1991">1991</div>
<div class="xdsoft_option " data-value="1992">1992</div>
<div class="xdsoft_option " data-value="1993">1993</div>
<div class="xdsoft_option " data-value="1994">1994</div>
<div class="xdsoft_option " data-value="1995">1995</div>
<div class="xdsoft_option " data-value="1996">1996</div>
<div class="xdsoft_option " data-value="1997">1997</div>
<div class="xdsoft_option " data-value="1998">1998</div>
<div class="xdsoft_option " data-value="1999">1999</div>
<div class="xdsoft_option " data-value="2000">2000</div>
<div class="xdsoft_option " data-value="2001">2001</div>
<div class="xdsoft_option " data-value="2002">2002</div>
<div class="xdsoft_option " data-value="2003">2003</div>
<div class="xdsoft_option " data-value="2004">2004</div>
<div class="xdsoft_option " data-value="2005">2005</div>
<div class="xdsoft_option " data-value="2006">2006</div>
<div class="xdsoft_option " data-value="2007">2007</div>
<div class="xdsoft_option " data-value="2008">2008</div>
<div class="xdsoft_option " data-value="2009">2009</div>
<div class="xdsoft_option " data-value="2010">2010</div>
<div class="xdsoft_option " data-value="2011">2011</div>
<div class="xdsoft_option " data-value="2012">2012</div>
<div class="xdsoft_option " data-value="2013">2013</div>
<div class="xdsoft_option xdsoft_current" data-value="2014">2014</div>
<div class="xdsoft_option " data-value="2015">2015</div>
<div class="xdsoft_option " data-value="2016">2016</div>
<div class="xdsoft_option " data-value="2017">2017</div>
<div class="xdsoft_option " data-value="2018">2018</div>
<div class="xdsoft_option " data-value="2019">2019</div>
<div class="xdsoft_option " data-value="2020">2020</div>
<div class="xdsoft_option " data-value="2021">2021</div>
<div class="xdsoft_option " data-value="2022">2022</div>
<div class="xdsoft_option " data-value="2023">2023</div>
<div class="xdsoft_option " data-value="2024">2024</div>
<div class="xdsoft_option " data-value="2025">2025</div>
<div class="xdsoft_option " data-value="2026">2026</div>
<div class="xdsoft_option " data-value="2027">2027</div>
<div class="xdsoft_option " data-value="2028">2028</div>
<div class="xdsoft_option " data-value="2029">2029</div>
<div class="xdsoft_option " data-value="2030">2030</div>
<div class="xdsoft_option " data-value="2031">2031</div>
<div class="xdsoft_option " data-value="2032">2032</div>
<div class="xdsoft_option " data-value="2033">2033</div>
<div class="xdsoft_option " data-value="2034">2034</div>
<div class="xdsoft_option " data-value="2035">2035</div>
<div class="xdsoft_option " data-value="2036">2036</div>
<div class="xdsoft_option " data-value="2037">2037</div>
<div class="xdsoft_option " data-value="2038">2038</div>
<div class="xdsoft_option " data-value="2039">2039</div>
<div class="xdsoft_option " data-value="2040">2040</div>
<div class="xdsoft_option " data-value="2041">2041</div>
<div class="xdsoft_option " data-value="2042">2042</div>
<div class="xdsoft_option " data-value="2043">2043</div>
<div class="xdsoft_option " data-value="2044">2044</div>
<div class="xdsoft_option " data-value="2045">2045</div>
<div class="xdsoft_option " data-value="2046">2046</div>
<div class="xdsoft_option " data-value="2047">2047</div>
<div class="xdsoft_option " data-value="2048">2048</div>
<div class="xdsoft_option " data-value="2049">2049</div>
<div class="xdsoft_option " data-value="2050">2050</div>
</div>
<div class="xdsoft_scrollbar">
<div style="display: block; height: 10px; margin-top: 0px;"
	class="xdsoft_scroller"></div>
</div>
</div>
</div>
<button type="button" class="xdsoft_next"></button>
</div>
<div class="xdsoft_calendar">
<table>
	<thead>
		<tr>
			<th>日</th>
			<th>一</th>
			<th>二</th>
			<th>三</th>
			<th>四</th>
			<th>五</th>
			<th>六</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td data-date="29" data-month="5" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_other_month xdsoft_weekend">
			<div>29</div>
			</td>
			<td data-date="30" data-month="5" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week1 xdsoft_date xdsoft_other_month">
			<div>30</div>
			</td>
			<td data-date="1" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week2 xdsoft_date">
			<div>1</div>
			</td>
			<td data-date="2" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week3 xdsoft_date">
			<div>2</div>
			</td>
			<td data-date="3" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week4 xdsoft_date">
			<div>3</div>
			</td>
			<td data-date="4" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week5 xdsoft_date">
			<div>4</div>
			</td>
			<td data-date="5" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend">
			<div>5</div>
			</td>
		</tr>
		<tr>
			<td data-date="6" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend">
			<div>6</div>
			</td>
			<td data-date="7" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week1 xdsoft_date">
			<div>7</div>
			</td>
			<td data-date="8" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week2 xdsoft_date">
			<div>8</div>
			</td>
			<td data-date="9" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week3 xdsoft_date">
			<div>9</div>
			</td>
			<td data-date="10" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week4 xdsoft_date">
			<div>10</div>
			</td>
			<td data-date="11" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week5 xdsoft_date">
			<div>11</div>
			</td>
			<td data-date="12" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend">
			<div>12</div>
			</td>
		</tr>
		<tr>
			<td data-date="13" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend">
			<div>13</div>
			</td>
			<td data-date="14" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week1 xdsoft_date">
			<div>14</div>
			</td>
			<td data-date="15" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week2 xdsoft_date">
			<div>15</div>
			</td>
			<td data-date="16" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week3 xdsoft_date">
			<div>16</div>
			</td>
			<td data-date="17" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week4 xdsoft_date">
			<div>17</div>
			</td>
			<td data-date="18" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week5 xdsoft_date">
			<div>18</div>
			</td>
			<td data-date="19" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend">
			<div>19</div>
			</td>
		</tr>
		<tr>
			<td data-date="20" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend">
			<div>20</div>
			</td>
			<td data-date="21" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week1 xdsoft_date">
			<div>21</div>
			</td>
			<td data-date="22" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week2 xdsoft_date">
			<div>22</div>
			</td>
			<td data-date="23" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week3 xdsoft_date">
			<div>23</div>
			</td>
			<td data-date="24" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week4 xdsoft_date">
			<div>24</div>
			</td>
			<td data-date="25" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week5 xdsoft_date">
			<div>25</div>
			</td>
			<td data-date="26" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_weekend">
			<div>26</div>
			</td>
		</tr>
		<tr>
			<td data-date="27" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week0 xdsoft_date xdsoft_weekend">
			<div>27</div>
			</td>
			<td data-date="28" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week1 xdsoft_date">
			<div>28</div>
			</td>
			<td data-date="29" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week2 xdsoft_date">
			<div>29</div>
			</td>
			<td data-date="30" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week3 xdsoft_date">
			<div>30</div>
			</td>
			<td data-date="31" data-month="6" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week4 xdsoft_date xdsoft_current xdsoft_today">
			<div>31</div>
			</td>
			<td data-date="1" data-month="7" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week5 xdsoft_date xdsoft_other_month">
			<div>1</div>
			</td>
			<td data-date="2" data-month="7" data-year="2014"
				class="xdsoft_date xdsoft_day_of_week6 xdsoft_date xdsoft_other_month xdsoft_weekend">
			<div>2</div>
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<div class="xdsoft_timepicker">
<button type="button" class="xdsoft_prev"></button>
<div class="xdsoft_time_box xdsoft_scroller_box">
<div style="margin-top: 0px;" class="xdsoft_time_variant">
<div class="xdsoft_time " data-hour="0" data-minute="0">00:00</div>
<div class="xdsoft_time " data-hour="1" data-minute="0">01:00</div>
<div class="xdsoft_time " data-hour="2" data-minute="0">02:00</div>
<div class="xdsoft_time " data-hour="3" data-minute="0">03:00</div>
<div class="xdsoft_time " data-hour="4" data-minute="0">04:00</div>
<div class="xdsoft_time " data-hour="5" data-minute="0">05:00</div>
<div class="xdsoft_time " data-hour="6" data-minute="0">06:00</div>
<div class="xdsoft_time " data-hour="7" data-minute="0">07:00</div>
<div class="xdsoft_time " data-hour="8" data-minute="0">08:00</div>
<div class="xdsoft_time " data-hour="9" data-minute="0">09:00</div>
<div class="xdsoft_time " data-hour="10" data-minute="0">10:00</div>
<div class="xdsoft_time " data-hour="11" data-minute="0">11:00</div>
<div class="xdsoft_time " data-hour="12" data-minute="0">12:00</div>
<div class="xdsoft_time xdsoft_current" data-hour="13" data-minute="0">13:00</div>
<div class="xdsoft_time " data-hour="14" data-minute="0">14:00</div>
<div class="xdsoft_time " data-hour="15" data-minute="0">15:00</div>
<div class="xdsoft_time " data-hour="16" data-minute="0">16:00</div>
<div class="xdsoft_time " data-hour="17" data-minute="0">17:00</div>
<div class="xdsoft_time " data-hour="18" data-minute="0">18:00</div>
<div class="xdsoft_time " data-hour="19" data-minute="0">19:00</div>
<div class="xdsoft_time " data-hour="20" data-minute="0">20:00</div>
<div class="xdsoft_time " data-hour="21" data-minute="0">21:00</div>
<div class="xdsoft_time " data-hour="22" data-minute="0">22:00</div>
<div class="xdsoft_time " data-hour="23" data-minute="0">23:00</div>
</div>
<div class="xdsoft_scrollbar">
<div style="display: block; height: 10px; margin-top: 0px;"
	class="xdsoft_scroller"></div>
</div>
</div>
<button type="button" class="xdsoft_next"></button>
</div>
</div>


<div id="mask" style="width:100%; height:100%; position:fixed; top:0; left:0; z-inde:1999;background:#cccccc; filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity:0.5;"></div>
<div id="maskTop" style="width: 600px; height: 500px; border: #999999 1px solid; background: #fff; color: #333; position: fixed; top: 50%; left: 50%; margin-left: -300px; margin-top: -250px; z-index: 2999; filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,direction=120,strength=4); -moz-box-shadow: 2px 2px 10px #909090; -webkit-box-shadow: 2px 2px 10px #909090; box-shadow: 2px 2px 10px #909090;"><div id="maskTitle" style="height: 50px; line-height: 50px; font-family: Microsoft Yahei; font-size: 20px; color: #333333; padding-left: 20px; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAyCAYAAABlG0p9AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABvSURBVEhL1cq5DcAwDENR7T+sL9lOOoUbkCoCwwKewOJbiGe+31BkwgeDM18YgrPhxuBs4CkS4cQQZMKFwd0R+gzFJaFjcD+EfXgoMuHA4O4Iew/FJWHD4BJhwxDoYcNTIKwY3NGwYggQFgxODEt8xO1/6P+HHxEAAAAASUVORK5CYII=); border-bottom: 1px solid #999999; position: relative;">选择部门
<div id="popWinClose" style="width: 28px; height: 28px; cursor: pointer; position: absolute; top: -12px; right: -9px; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAJeSURBVEhLvZbPq2lRFMf9B4bSTTIxZiBSMlCI9ycoKX+Bod7w/il3YIL4NyhFmYmBKD2Sp0ix3vqes/e529n74t33Op9astevr3PO2tvxvcLtdquzfbAtyAV8IlYX6d+DG7yxvbP9Fr2fglxR8ybavAYX/GD7Jfr8NahFD9HuMZz4U9Q5jEYjqlarFA6HiVPuDD7EkOMGvTjna9xi8/mcstmsJvKVIRc1Kl+K4haIHItut0t+v9/Y+JGhBrUq6M2xT9iBAXGeGQrY/U+miqI3NNhvw4t3EbNuyXeuzG3ood5eaLDfhhfO6JueWbPZtGKFQkGLNRoN2u/3FI/HtRh6SaDBPkusLnzWpMlkaRC7XC5WfLVaUTqddmKVSoVOp5MVG4/HlEql7mph6vRCC4IfYm2Nt7vAzW63o2KxSLVaja7Xq/DatFotrR49JdCCoHNcmfZZPp+n9XotMmxwVVwnVjbD4ZAikYhWj54SaN1dgjtZWiaToe12K7J0JpOJUUyaykuCsFwuR8fjUWR+slgsKBAIGGukqbwsiGdmElwul5RIJIw10lReEsQ0ns9nkaVzOBys226qhak8HRrsM7ktJLPZjDabjVjZYLBKpZJWrw0NfzzcFvj1KtPp1HpmsVjM2iIq/X5fqzdti4cbHycINjUYDAYUCoWcGA4BHAag1+tRMBi8q4VpGx/wl4dHWzKZpHa7TdFoVIuVy2XqdDrGSTUebYAXnh/e3v49AXZ49wcs4YB3rxgStyjApGG8TfsUPsTUaZQ8FZPgFrB585oo4QLvXoTdcIP/9Krv8/0BDUSOirKWU6wAAAAASUVORK5CYII=);"></div></div>
<iframe src="QueryDeptSmall.jsp" frameborder="0" height="448" scrolling="no" width="600">
</iframe></div>


</body>
 
</html>