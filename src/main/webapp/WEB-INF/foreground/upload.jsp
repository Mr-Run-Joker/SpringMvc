<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/LibraryWeb/css/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="/LibraryWeb/js/jquery.min.js"></script>
    <script type="text/javascript" src="/LibraryWeb/js/test.js"></script>
</head>
<body>
    <div class="container text-center">
         <h3>上传文件</h3>
        <div >
            <form class="container"  action="/LibraryWeb/foregroundPage/upload"   method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-file">选择文件</span>
                        </div>
                        <input type="file" class="form-control" name="myPaper">
                    </div>
                </div>
                <button class="btn btn-primary" type="submit">提交</button>
            </form>
        </div>
    </div>
     <div class="container text-center">
         <h3>上传文件2</h3>
        <div >
            <form class="container"  id="uploadForm" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-file">选择文件</span>
                        </div>
                        <input type="file" class="form-control" name="myPaper">
                    </div>
                </div>
                <button class="btn btn-primary" id="upload" type="button">提交</button>
            </form>
        </div>
    </div>
    <span><s:fielderror/></span>
</body>
</html>