<%--
  Created by IntelliJ IDEA.
  User: Anubis
  Date: 2020/7/6
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买成功</title>
</head>
<body>
尊敬的<%=session.getAttribute("name")%>用户您已购买成功;
<a href="show.jsp">继续购物</a>
<a href='/bean/logout.jsp'>注销用户</a>
</body>
</html>
