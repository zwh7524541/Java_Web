package User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
//@WebServlet(urlPatterns = "/login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //先获取到全局配置中的设置的编码
        String encode = req.getServletContext().getInitParameter("encode");
        //设置请求和响应的编码
        req.setCharacterEncoding(encode);
        resp.setContentType("text/html;charset="+encode);
        try {
            //从登录页面拿到用户输入的用户名
            String name = req.getParameter("user");
            //从登录页面拿到用户输入的密码
            String pwd = req.getParameter("password");
            //还是在控制台上输出看是否拿到的帐号密码
            System.out.println("用户名：" +name);
            System.out.println("密码："+ pwd);
            //下边就是加载数据库的过程
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql:///day02";
            String user = "root";
            String password = "xxxxxxx";
            String sql = "select * from users where userName = '"+name+"'";
            String sql2 = "select * from users where password = '"+pwd+"'";
            Connection conn = DriverManager.getConnection(url, user, password);
            //这里我选择是创建了两个执行器，如果一个执行器执行两个sql语句。就会出现异常

            Statement stmt = conn.createStatement();
            Statement stmt2 =conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            ResultSet rs2 = stmt2.executeQuery(sql2);
            //判断用户输入的帐号是否在数据库中
            if (rs.next()){
                System.out.print("用户名：" + rs.getString("userName") + "\t");
            }else{
                resp.getWriter().write("对不起你帐号名有误，请<a href='/day02'>注册</a>");
            }
            //通过了帐号的判断，就对密码进行判断，同样是判断密码是否与数据库中的密码匹配
            if(rs2.next()){
                resp.getWriter().write("登录成功，点击跳转<a href='http://www.baidu.com'>首页</a>");
                System.out.print("密码：" + rs.getString("password") + "\t");
            }else{
                resp.getWriter().write("对不起你密码有误，请<a href='/day02'>注册</a>");
            }


        }catch (Exception e){
            e.printStackTrace();
        }
    }
}