<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.shopping.valuebean.GoodsSingle" %>
<jsp:useBean id="myGoodsList" class="bean.shopping.valuebean.GoodsList" scope="session"/>
<%
    ArrayList goodsList = myGoodsList.getGoodList();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/styles.css" type="text/css" rel="stylesheet" />
    <title>购物商城</title>
</head>
<body>
<table align="center" valign="center">
    <tr height="50">
        <td colspan="3" align="center" ><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物商城</h1></td>
    </tr>
    <tr align="center" height="30" bgcolor="lightgrey">
        <td>名称</td>
        <td>价格(元/本)</td>
        <td>购买</td>
    </tr>
    <% if(goodsList == null || goodsList.size() == 0){ %>
    <tr height="100">
        <td colspan="3" align="center">没有商品可以显示！</td>
    </tr>
    <%
    }else{
        for(int i = 0; i < goodsList.size(); i++){
            GoodsSingle single = (GoodsSingle)goodsList.get(i);
    %>
    <tr align="center" height="50">

        <td><%= single.getName() %></td>
        <td><%= single.getPrice() %></td>
        <td><a href="docar.jsp?action=buy&id=<%=i%>">加入购物车</a></td>
    </tr>
    <%
            }
        }
    %>
    <tr align="center" height="50">
        <td align="middle" colspan="3"><a href="shopcar.jsp">查看购物车</a></td>
    </tr>

    <tr height="50">
        <td align="center" colspan="5"><a href="/bean/login.html">注销登陆</a></td>
    </tr>
    <tr>当前登录用户<%=session.getAttribute("name")%>;</tr>


</table>
</body>
</html>