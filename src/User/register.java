package User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.Arrays;

//@WebServlet(urlPatterns = "/register")
public class register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取在web.xml中的配置的全局属性
        String encode = req.getServletContext().getInitParameter("encode");
        //为了防止乱码设置编码
        req.setCharacterEncoding(encode);
        resp.setContentType("text/html;charset="+encode);
        //获得请求过来的资源
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String repassword = req.getParameter("repassword");
        String sex = req.getParameter("sex");
        String[] hobby = req.getParameterValues("hobby");
        String country = req.getParameter("country");
        String describe = req.getParameter("describe");
        //这里将获取到的请求数据都在控制台上打印了一遍
        //看是否拿到了这些数据
        System.out.println(userName);
        System.out.println(password);
        System.out.println(repassword);
        System.out.println(sex);
        System.out.println(hobby[0]);
        System.out.println(country);
        System.out.println(describe);
        //这里只加了简单的判断，判断帐号是否填写，以及两次密码是否一致
        //判断信息是否填写
        if(userName==null||password==null||repassword==null||sex==null||hobby==null||country==null||describe==null){
            resp.getWriter().write("所有的数据都不能为空，请重新<a href = '/day02'>填写</a>");
            return;
        }
        //判断两次密码是否一致
        if(!password.equals(repassword)){
            resp.getWriter().write("两次密码输入不一致，请重新<a href = '/day02'>填写</a>");
            return;
        }
        try {
            //加载MySQL的数据库驱动
            Class.forName("com.mysql.jdbc.Driver");
            //这里我在数据库中添加了一个名为day02的数据库
            String url = "jdbc:mysql:///day02";
            //默认是系统管理员的账户
            String user = "root";
            //这里你自己设置的数据库密码
            String passw = "xxxxxx";
            //获取到数据库的连接
            Connection connection = DriverManager.getConnection(url, user, passw);
            //获取到执行器
            Statement stmt = connection.createStatement();
            //需要执行的sql语句
            String sql = "insert into users values (null,'"+userName+"','"+password+"','"+repassword+"','"+sex+"','"+ Arrays.toString(hobby)+"','"+country+"','"+describe+"')";
            //建议打印一下sql语句，放在数据库中看是否能将数据添加到数据库中
            System.out.println(sql);
            //执行sql语句
            int i = stmt.executeUpdate(sql);
            //添加成功上边这个执行器就会返回1
            if(i==1){
                resp.getWriter().write("注册成功，请<a href = '/day02/login.html'>登录</a>");
            }else{
                resp.getWriter().write("注册失败，请返回重新<a href = '/day02/'></a>");
            }
            stmt.close();
            connection.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}