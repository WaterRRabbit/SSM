<%--
  Created by IntelliJ IDEA.
  User: z
  Date: 2018/7/23
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="bookmark" href="favicon.ico" type="image/x-icon" />
</head>
<body>
<div class="jumbotron text-center">
    <h1>我的第一个 SSM 实例</h1><br><br>
    <a class="btn btn-primary btn-lg" role="button" style="color: white">
        学习更多&nbsp;<i class="fa fa-github" style="font-size:30px;color: black"></i>
    </a>

</div>
<div class="container" style="padding: 15px;width: 45%">
    <form action="/user/dologin" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
        </div>
        <button type="submit" class="btn btn-primary" style="width: 100%;">Login</button>
    </form>
</div>
<div style="width: 100%;text-align: center;">
    <br>
    <i class="fa fa-qq" style="font-size:32px;color: dimgray">&nbsp;</i>
    <i class="fa fa-wechat" style="font-size:32px;color: dimgray">&nbsp;</i>
    <i class="fa fa-github" style="font-size:34px;color: dimgray"></i>
</div>
</body>
</html>
