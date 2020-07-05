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
    if (pass1.equals(pass2) && UserDao.register(name, pass1)) {
        out.println("注册成功！！");
        out.println("<a href='login.html'>请登录</a>");
    }
    else if(pass1.equals(pass2))
    {
        out.println("用户名存在！！");
        out.println("<a href='register.html'>重新注册</a>");
    }else if(UserDao.register(name, pass1))
    {
        out.println("两次密码相同！！");
        out.println("<a href='register.html'>重新注册</a>");
    }

%>

</body>
</html>
