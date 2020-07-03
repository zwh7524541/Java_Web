<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="bean.shopping.toolbean.MyTools" %>
<%@ page import="bean.shopping.valuebean.GoodsSingle" %>
<jsp:useBean id="myCar" class="bean.shopping.toolbean.ShopCar" scope="session"/>
<jsp:useBean id="myGoodsList" class="bean.shopping.valuebean.GoodsList" scope="session"/>
<%
    String action = request.getParameter("action");

    if(action == null){
        action = "";
        session.setAttribute("flag", "heiehih");
    }else if(action.equals("buy")){
        int id = MyTools.strToInt(request.getParameter("id"));
        GoodsSingle one = myGoodsList.findGood(id);
        myCar.addItem(one);
        response.sendRedirect("show.jsp");
    }else if(action.equals("remove_goods")){
        int id = MyTools.strToInt(request.getParameter("id"));
        GoodsSingle one = myGoodsList.findGood(id);
        myGoodsList.removeGoods(one);
        response.sendRedirect("show.jsp");

    }else if(action.equals("reduce_cargoods")){
        int id = MyTools.strToInt(request.getParameter("id"));
        GoodsSingle one = myCar.findGood(id);
        myCar.reduceItem(one);
        response.sendRedirect("shopcar.jsp");
    }else if(action.equals("add_cargoods")){
        int id = MyTools.strToInt(request.getParameter("id"));
        GoodsSingle one = myCar.findGood(id);
        myCar.addItem(one);
        response.sendRedirect("shopcar.jsp");
    }else if(action.equals("clear_item")){
        int id = MyTools.strToInt(request.getParameter("id"));
        GoodsSingle one = myCar.findGood(id);
        myCar.removeItem(one);
        response.sendRedirect("shopcar.jsp");
    }else if(action.equals("clear")){
        myCar.clearCar();
        response.sendRedirect("shopcar.jsp");
    }else{
        response.sendRedirect("show.jsp");
    }
%>