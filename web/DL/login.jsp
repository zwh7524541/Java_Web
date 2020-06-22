<%--
  Created by IntelliJ IDEA.
  User: Anubis
  Date: 2020/6/22
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
</head>
<body>
<fieldset id="">
    <legend>登录页面</legend>
    <form action="/login" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="userName" /><span id="span1"></span></td>
            </tr>
            <tr>
                <td>
                    密码：
                </td>
                <td>
                    <input type="password" name="password" />
                </td>
            </tr>
        </table>
    </form>
    <input type="submit" value="登录">
    <a href="register.jsp">注册</a>
</fieldset>
</div>
</body>
</html>