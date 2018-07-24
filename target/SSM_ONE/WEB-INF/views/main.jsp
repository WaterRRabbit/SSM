<%--
  Created by IntelliJ IDEA.
  User: z
  Date: 2018/7/23
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a class="nav-link active" href="${pageContext.request.contextPath}/user/main">用户管理</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/add">添加用户</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">修改用户</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#"></a>
                </li>
            </ul>
            <hr class="d-sm-none">
        </div>
        <div class="col-sm-9">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>姓名</th>
                        <th>身份证</th>
                        <th>电话号码</th>
                        <th>地址</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.name}</td>
                            <td>${user.idCard}</td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td><a class="btn btn-primary btn-sm" role="button" href="${pageContext.request.contextPath}/user/update?id=${user.id}">修改</a></td>
                            <td><a class="btn btn-primary btn-sm" role="button" href="${pageContext.request.contextPath}/user/deleteUserById?id=${user.id}" onclick='return confirm("确认要删除吗?")'>删除</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



</body>
</html>
