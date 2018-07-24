<%--
  Created by IntelliJ IDEA.
  User: z
  Date: 2018/7/24
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>我的第一个 SSM 实例</h1><br><br>
    <a class="btn btn-primary btn-lg" role="button" style="color: white">
        学习更多&nbsp;<i class="fa fa-github" style="font-size:30px;color: black"></i>
    </a>
</div>

<div class="container" style="margin-top:30px">
    <div class="row">
        <div class="col-sm-3">
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/main">用户管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/add">添加用户</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled active" href="#">修改用户</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#"></a>
                </li>
            </ul>
            <hr class="d-sm-none">
        </div>
        <div class="col-sm-9">
            <div class="table-responsive">
                <div class="container">

                    <form action="/user/doupdate" method="post">
                        <div class="form-group">
                            <label for="id">ID:</label>
                            <input type="text" class="form-control" id="id" name="id" value="${user.id}" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" value="${user.name}">
                        </div>
                        <div class="form-group">
                            <label for="idCard">IDCard:</label>
                            <input type="text" class="form-control" id="idCard" value="${user.idCard}" name="idCard">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input type="text" class="form-control" id="phone" value="${user.phone}" name="phone">
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" class="form-control" id="address" value="${user.address}" name="address">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
