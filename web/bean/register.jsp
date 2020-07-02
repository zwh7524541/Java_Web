<%@ page import="javax.jws.soap.SOAPBinding" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/28 0028
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="User.UserDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("username");
    String pass1 = request.getParameter("password1");
    String pass2 = request.getParameter("password2");
    if (pass1.equals(pass2) && User.UserDao.register(name, pass1)) {
        out.println("注册成功！！");
        out.println("<a href='login.html'>请登录</a>");

    } else {
        out.println("注册失败");
        out.println("<a href='register.html'>重新注册</a>");
    }
%>

</body>
</html>
