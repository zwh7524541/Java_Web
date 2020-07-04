<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="bean.shopping.valuebean.GoodsSingle" %>
<jsp:useBean id="myGoodsList" class="bean.shopping.valuebean.GoodsList" scope="session" />
<%
    myGoodsList.clearGoods();
    GoodsSingle g1 = new GoodsSingle("百年孤独",38,1);
    GoodsSingle g2 = new GoodsSingle("霍乱时期的爱情",69,1);
    GoodsSingle g3 = new GoodsSingle("一起连环绑架案的新闻",62,1);
    GoodsSingle g4 = new GoodsSingle("米格尔在智利的地下行动",45,1);
    GoodsSingle g5 = new GoodsSingle("毒木圣经",53,1);
    GoodsSingle g6 = new GoodsSingle("没有人给他写信的上校",32,1);
    GoodsSingle g7 = new GoodsSingle("沉默",29,1);
    GoodsSingle g8 = new GoodsSingle("枯枝败叶",36,1);
    GoodsSingle g9 = new GoodsSingle("豆树青青",50,1);
    GoodsSingle g10 = new GoodsSingle("一桩事先张扬的凶杀案",36,1);
    GoodsSingle g11 = new GoodsSingle("苦妓回忆录",27,1);
    GoodsSingle g12 = new GoodsSingle("番石榴飘香",29,1);
    GoodsSingle g13 = new GoodsSingle("蓝狗的眼睛",32,1);
    GoodsSingle g14 = new GoodsSingle("恶时辰",27,1);

    myGoodsList.addGoods(g1);
    myGoodsList.addGoods(g2);
    myGoodsList.addGoods(g3);
    myGoodsList.addGoods(g4);
    myGoodsList.addGoods(g5);
    myGoodsList.addGoods(g6);
    myGoodsList.addGoods(g7);
    myGoodsList.addGoods(g8);
    myGoodsList.addGoods(g9);
    myGoodsList.addGoods(g10);
    myGoodsList.addGoods(g11);
    myGoodsList.addGoods(g12);
    myGoodsList.addGoods(g13);
    myGoodsList.addGoods(g14);
%>
<%
    response.sendRedirect("show.jsp");
%>

