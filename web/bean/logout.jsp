<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();//销毁整个session表
    response.sendRedirect("logout2.jsp");
%>
</body>
</html>
