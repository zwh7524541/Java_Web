<%--
  Created by IntelliJ IDEA.
  User: Anubis
  Date: 2020/6/22
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <title>注册</title>
</head>
<body>
<fieldset id="">
    <legend>注册页面</legend>
    <form action="/register" method="post" id="form" ">
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
        <tr>
            <td>
                确认密码：
            </td>
            <td>
                <input type="password" name="repassword" />
                <span id="span2"></span>
            </td>

        </tr>
    </table>
    <input type="submit" id="btn2" value="提交" />
    <input type="button" id="btn1" value="验证" />
    </form>

</fieldset>
</body>
<script type="text/javascript">
    function checkImg() {
        var img = document.getElementById("img");
        img.src ="/day02/demo?"+new Date().getTime()

    }
</script>