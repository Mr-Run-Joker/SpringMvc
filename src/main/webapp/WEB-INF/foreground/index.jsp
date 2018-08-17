<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>看看书库</title>
<link rel="stylesheet" href="/SpringMvc/css/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/SpringMvc/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/SpringMvc/css/main.css">
<script src="/SpringMvc/js/jquery.min.js"></script>
<script src="/SpringMvc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/SpringMvc/js/upload.js"></script>
</head>
<body>
	<div class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a href="baidu.com" class="navbar-brand"> </a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/LibraryWeb/login/toindex">首页</a></li>
				<li><a href="#">分类</a></li>
				<li><a href="#">精品内容</a></li>
				<li><a href="#">频道专区</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/SpringMvc/foreground/toLogin.action">登陆</a></li>
				<li><a href="/SpringMvc/foreground/toRegister.action">注册</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<div class="list-group side-bar">
					<a href="#" class="list-group-item active">所有分类</a> <a href="#"
						class="list-group-item">教育频道</a> <a href="#"
						class="list-group-item">专业资料</a> <a href="#"
						class="list-group-item">实用文档</a> <a href="#"
						class="list-group-item">资格考试</a> <a href="#"
						class="list-group-item">生活/商务</a>
				</div>
			</div>
			<div class="col-sm-7">asdasvasdg</div>
			<div class="col-sm-3">
				<div class="side-bar-card  text-center">
					<form action="" method="post">
						<div class="form-group form-inline">
							<div class="form-inline">
								<input type="text" class="form-control ">
								<button class="btn btn-primary btn-sm">搜索文档</button>
							</div>
						</div>
						<div class="form-group ">
							<input type="radio" name="type">全部 <input type="radio"
								name="type">DOC <input type="radio" name="type">PPT
							<input type="radio" name="type">TXT <input type="radio"
								name="type">PDF
						</div>
					</form>
				</div>
				<div class="side-bar-card  text-center">
					<div>
						<a class="btn btn-default" data-toggle="modal"
							data-target="#fileForm"> 上传一份我的文档</a>
					</div>
					<div class="desc">已有500份文档</div>
				</div>
				<div class="side-bar-card text-center ">
					<div class="card-title">扫码登陆</div>
					<div class="card-body"></div>
				</div>
			</div>
		</div>
	</div>
	<!--上传文件模态框-->
	<div class="modal fade" id="fileForm"  tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title text-center">上传文件</h4>
				</div>
				<div class="modal-body">
					<form  method="post" id="uploadForm" >
						<div class="form-group ">
							<label>标题</label> <input type="text" class="form-control" />
						</div>
						<div class="form-group">
							<label>简介</label>
							<textarea name="" id="" cols="30" rows="3" class="form-control" ></textarea>
						</div>
						<div class="form-group ">
							<label>分类</label> <select class="form-control" name="myFile.classify">
								<option value="1">haha</option>
							</select>
						</div>
						<div class="form-group ">
							<label>所需积分</label> <input type="text" class="form-control" name="myFile.cost"/>
						</div>
						<div class="form-group ">
							<label>文件</label> <input type="file" name="myPaper"/>
						</div>
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" id="upload" class="btn btn-primary">提交</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="footer">@ 2017 看看书库 京ICP证030173号 京网文[2013]0934-983号</div>
</body>
</html>
