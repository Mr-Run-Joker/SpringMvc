<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>智能文库管理系统</title>
    <link rel="stylesheet" type="text/css" href="/LibraryWeb/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/LibraryWeb/css/style.css">
    <link rel="stylesheet" type="text/css" href="/LibraryWeb/css/login.css">
    <link rel="apple-touch-icon-precomposed" href="/LibraryWeb/img/icon.png">
    <link rel="shortcut icon" href="/LibraryWeb/img/favicon.ico">
    <script src="/LibraryWeb/js/jquery.min.js"></script>
    <script src="/LibraryWeb/js/bootstrap.min.js"></script> 
</head>
<body class="user-select">
<input type="hidden" value="${fruit}" id="fruit"/>
<div class="container">
  <div class="siteIcon"><img src="/LibraryWeb/img/icon.png" alt="" data-toggle="tooltip" data-placement="top" title="智能文库管理系统" draggable="false" /></div>
  <form action="/LibraryWeb/backStage/entryLogin" method="post" autocomplete="off" class="form-signin">
    <h2 class="form-signin-heading">管理员登录</h2>
    <label for="userName" class="sr-only">用户名</label>
    <input type="text" id="userName" name="user.account" class="form-control" placeholder="请输入用户名" required autofocus autocomplete="off" maxlength="10">
    <label for="userPwd" class="sr-only">密码</label>
    <input type="password" id="userPwd" name="user.password" class="form-control" placeholder="请输入密码" required autocomplete="off" maxlength="18">
    <button class="btn btn-lg btn-primary btn-block" type="submit" id="signinSubmit">登录</button>
  </form>
</div>
<script>
$(function () {
	var fruit=$("#fruit").val();
	 if (fruit!=""){
			alert(fruit);
	 }});
$('[data-toggle="tooltip"]').tooltip();
window.oncontextmenu = function(){
	//return false;
};
$('.siteIcon img').click(function(){
	window.location.reload();
});
$('#signinSubmit').click(function(){
	if($('#userName').val() === ''){
		$(this).text('用户名不能为空');
	}else if($('#userPwd').val() === ''){
		$(this).text('密码不能为空');
	}else{
		$(this).text('请稍后...');
	}
});
</script>
</body>
</html>
