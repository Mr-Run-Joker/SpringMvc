<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员管理</title>
<link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/LibraryWeb/css/main.css">
</head>
<body class="main-body">
	<div class="container">
		<form class="container form-inline ">
			<h3 class="text-center">用户管理</h3>
			<div class="form-group">
				<label class="">名字</label> <input class="form-control" type="text"
					name="" value="">
			</div>
			<div class="form-group">
				<label class="">状态</label> <input class="form-control" type="text"
					name="" value="">
			</div>
		</form>
		<table class="table table-hover table-bordered ">
			<thead class="thead tr-background">
				<tr>
					<th>名称</th>
					<th>性别</th>
					<th>学历</th>
					<th>职业</th>
					<th>手机号</th>
					<th>Email</th>
					<th>积分</th>
					<th>一共文件数</th>
					<th>状态</th>
					<th>操作</th> 
				</tr>
			</thead>
			<tbody>
				<s:iterator value="leaguerList" id="leaguer">
					<tr>
						<td><s:property value="#leaguer.name" /></td>
						<td><s:property value="#leaguer.sex" /></td>
						<td><s:property value="#leaguer.schoolingname" /></td>
						<td><s:property value="#leaguer.vocationname" /></td>
						<td><s:property value="#leaguer.phone" /></td>
						<td><s:property value="#leaguer.email" /></td>
						<td><s:property value="#leaguer.integral" /></td>
						<td><s:property value="#leaguer.totalfile" /></td>
						<td><s:property value="#leaguer.statename" /></td>
						 <td>
							<div class="btn-group ">
								<button class="btn btn-warning" value="#leaguer.id">删除</button>
								<button class="btn btn-primary" value="#leaguer.id">禁用</button>
							</div>
						</td> 
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>

</html>
