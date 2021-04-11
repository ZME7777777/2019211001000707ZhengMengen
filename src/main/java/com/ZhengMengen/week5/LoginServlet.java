package com.ZhengMengen.week5;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    Connection con=null;

    @Override
    public void init() throws ServletException {
        super.init();
        /*String driver=getServletConfig().getServletContext().getInitParameter("driver");
        String url=getServletConfig().getServletContext().getInitParameter("url");
        String username=getServletConfig().getServletContext().getInitParameter("username");
        String password=getServletConfig().getServletContext().getInitParameter("password");
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url,username,password);
            System.out.println("init()-->"+con);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }*/
        con = (Connection) getServletContext().getAttribute("con");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<html>");
        out.println("<head><title>Login</title></head>");
        out.println("<body>");
        String sql="select * from Usertable where username=? and password=?";
        PreparedStatement pstmt= null;
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            ResultSet rs= pstmt.executeQuery();
            if(rs.next()){
//                out.println("Login Success!!!");
//                out.println("Welcome,"+username);
                request.setAttribute("id",rs.getInt("id"));
                request.setAttribute("username",rs.getString("username"));
                request.setAttribute("password",rs.getString("password"));
                request.setAttribute("email",rs.getString("email"));
                request.setAttribute("gender",rs.getString("gender"));
                request.setAttribute("birthDate",rs.getString("birthDate"));
                request.getRequestDispatcher("userInfo.jsp").forward(request,response);
           }else {//out.println("Login Error!!!");
                request.setAttribute("message","Username or Password Error!!!");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        out.println("</body>");
        out.println("</html>");
    }

    @Override
    public void destroy() {
        super.destroy();
        try {
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
