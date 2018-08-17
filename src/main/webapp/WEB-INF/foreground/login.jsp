<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="/SpringMvc/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/SpringMvc/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SpringMvc/css/main.css">
    <script type="text/javascript" src="/SpringMvc/js/jquery.min.js"></script>
  </head>
  <body>
    <div class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <a  href="baidu.com" class="navbar-brand" > </a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="/SpringMvc/login/toindex">首页</a></li>
          <li><a href="#">分类</a></li>
          <li><a href="#">精品内容</a></li>
          <li><a href="#">频道专区</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="/SpringMvc/login/tologin">登陆</a></li>
          <li><a href="/SpringMvc/login/toregisterAction">注册</a></li>
        </ul>
      </div>
    </div>
    <div class="container container-small">
      <form class="" action="login" method="post">
        <h1>登陆</h1>
        <div class="form-group">
          <label >账号</label>
          <input type="text" class="form-control" name="leaguer.account">
        </div>
        <div class="form-group">
          <label >密码</label>
          <input type="text" class="form-control" name="leaguer.password">
        </div>
          <div class="form-group">
            <label >验证码</label>
            <div class="input-group">
              <input type="text" class="form-control ">
              <div class="input-group-addon">
                <a href="#" id="getCheckCode"> <img src="/SpringMvc/foreground/createImage.action" alt="login" id="checkCode">获取验证码</a>
              </div>
            </div>
          </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block" name="button">登陆</button>
        </div>
        <div class="form-group">
          <a href="#">忘记密码</a>
        </div>
      </form>
    </div>
    <div class="footer">
      @ 2017 看看书库 京ICP证030173号   京网文[2013]0934-983号
    </div>
  </body>
  <script >
   $("#getCheckCode").click(function(){
	   var str="/SpringMvc/foreground/createImage.action?date=" + new Date().getTime();
	   $("#checkCode").attr("src",str);
   });
   <%--if (${fruit!=null}){--%>
	<%--alert("${fruit}");--%>
	<%--}--%>
  </script>
</html>
