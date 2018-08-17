<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/LibraryWeb/css/main.css">
    <link rel="stylesheet" href="/LibraryWeb/css/bootstrapValidator.css">
    <script type="text/javascript" src="/LibraryWeb/js/jquery.min.js" ></script>
    <script type="text/javascript" src="/LibraryWeb/js/bootstrapValidator.js" ></script>
    <script type="text/javascript" src="/LibraryWeb/js/main.js"></script>
  </head>
  <body>
  <input type="hidden" id="fruit" value="${fruit}">
    <div class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <a  href="baidu.com" class="navbar-brand" > </a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="/LibraryWeb/login/toindex">首页</a></li>
          <li><a href="#">分类</a></li>
          <li><a href="#">精品内容</a></li>
          <li><a href="#">频道专区</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="/LibraryWeb/login/tologin">登陆</a></li>
          <li class="active"><a href="/LibraryWeb/login/toregisterAction">注册</a></li>
        </ul>
      </div>
    </div>
    <div class="container container-small">
     <form action="register" method="post" id="form-register">
        <h1>注册</h1>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >账号</label>
            </div>
             <input type="text" class="form-control" name="leaguer.account">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >密码</label>
            </div>
            <input type="password" class="form-control" name="leaguer.password">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >再次输入密码</label>
            </div>
             <input type="password" class="form-control" name="pwd">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >昵称</label>
            </div>
             <input type="text" class="form-control" name="leaguer.name">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >性别</label>
            </div>
            <select  class="form-control" name="leaguer.sex">
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
                <label >学历</label>
            </div>
			<select  class="form-control" name="leaguer.schooling">
          	<c:forEach items="${schoolList}" var="schooling">
            <option value="${schooling.id}">${schooling.name}</option>
          	</c:forEach>
          </select>
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
             <label >职业</label>
            </div>
            <select  class="form-control" name="leaguer.vocation">
           <c:forEach items="${vacationList}" var="vacation">
              <option value="${vacation.id}">${vacation.name}</option>
            </c:forEach>
          </select>
        </div>
        </div>
       <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >手机号</label>
            </div>
            <input type="text" class="form-control" name="leaguer.phone">
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <label >email</label>
            </div>
            <input type="text" class="form-control" name="leaguer.email">
          </div>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block" name="button" id="button-submit">注册</button>
        </div>
        <div class="form-group">
          注册看看书库即代表同意看看书库<a href="#">服务条款</a>
        </div>
      </form>
    </div>
    <div class="footer">
      @ 2017 看看书库 京ICP证030173号   京网文[2013]0934-983号
    </div>
  </body>
  <!-- <script >
   if (${fruit!=null}){
	alert("${fruit}");
	};
  </script> -->
</html>
