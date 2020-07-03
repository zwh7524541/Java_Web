<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="bean.shopping.valuebean.GoodsSingle" %>
<jsp:useBean id="myGoodsList" class="bean.shopping.valuebean.GoodsList" scope="session" />
<%
    myGoodsList.clearGoods();
    GoodsSingle g1 = new GoodsSingle("Æ»¹û",3,1);
    GoodsSingle g2 = new GoodsSingle("Ïã½¶",4,1);
    GoodsSingle g3 = new GoodsSingle("Àæ",5,1);
    GoodsSingle g4 = new GoodsSingle("éÙ×Ó",6,1);

    myGoodsList.addGoods(g1);
    myGoodsList.addGoods(g2);
    myGoodsList.addGoods(g3);
    myGoodsList.addGoods(g4);
%>
<%
    response.sendRedirect("show.jsp");
%>

