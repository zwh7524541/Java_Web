<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.shopping.valuebean.GoodsSingle" %>
<jsp:useBean id="myCar" class="bean.shopping.toolbean.ShopCar" scope="session"/>
<%
    ArrayList buyList = myCar.getBuys();
    float total = 0;
%>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="css/styles.css" type="text/css" rel="stylesheet" />
    <title>购物车</title>
</head>
<body>
<table align="center" valign="center">
    <tr height="50">
        <td colspan="3" align="center" ><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车</h1></td>
    </tr>
    <tr align="center" height="30" bgcolor="lightgrey">
        <td>名称</td>
        <td>价格</td>
        <td>数量</td>
        <td>清除</td>
    </tr>
    <% if(buyList == null || buyList.size() == 0){ %>
    <tr height="100">
        <td colspan="5" align="center">您的购物车为空！</td>
    </tr>
    <%
    }else{
        for(int i = 0; i < buyList.size(); i++){
            GoodsSingle single = (GoodsSingle)buyList.get(i);
            float money = single.getPrice() * single.getNum();
            total += money;
    %>
    <tr align="center" height="50">
        <td><%= single.getName() %></td>
        <td><%= single.getPrice() %></td>
        <td>
            <a href="docar.jsp?action=reduce_cargoods&id=<%=i%>" >
                <img src="img/reduce.png" width="20" height="20"/>
            </a>
            <strong><%=single.getNum()%></strong>
            <a href="docar.jsp?action=add_cargoods&id=<%=i%>">
                <img src="img/add.png" width="20" height="20"/>
            </a>
        </td>
        <td><a href="docar.jsp?action=clear_item&id=<%=i%>">移除</a></td>
    </tr>
    <%
            }
        }
    %>
    <tr height="50">
        <td colspan="3" align="left" ><h4>应付金额：<%= total %></h4></td>
        <br>

    </tr>
    <tr align="center" height="50">
        <td align="left" colspan="3"><a href="show.jsp">继续购物</td>
        <td align="right" colspan="3"><a href="docar.jsp?action=clear">清空购物车</a></td>
    </tr>
    <tr>
        <td align="left" colspan="3"><a href="bought.jsp">结算</td>
    </tr>
    <tr>当前登录用户<%=session.getAttribute("name")%>;
        <%
            if (session.getAttribute("name") != null) {
                out.println("<a href='/bean/logout.jsp'>注销用户</a>");
            } else {
                out.println("<a href='/bean/login.html'>请登录</a>");
            }
        %>
    </tr>



</table>
</body>
</html>