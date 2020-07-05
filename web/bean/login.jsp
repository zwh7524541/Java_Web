<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="User.UserDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>


<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (UserDao.login(username, password)) {
        out.println("welcome " + username);
        session.setAttribute("name", username);

        response.sendRedirect("user.jsp");

    } else {
        out.println("用户名或密码错误");
        out.println("<a href='login.html'>重新登入</a>");
    }
%>
</body>
</html>
