<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
    <link rel="bookmark" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
</head>
<body>
<%

    response.sendRedirect("http://localhost:8080/user/login");

%>
</body>
</html>
