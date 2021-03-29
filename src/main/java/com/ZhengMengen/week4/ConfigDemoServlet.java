package com.ZhengMengen.week4;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
@WebServlet(
        urlPatterns = {"/config"},
        initParams = {
                @WebInitParam(name="name",value = "ZhengMengen"),
                @WebInitParam(name="studentId",value = "2019211001000707"),
        },loadOnStartup = 1
)
public class ConfigDemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletConfig config = getServletConfig();
        String name = config.getInitParameter("name");
        String id = config.getInitParameter("studentId");
        PrintWriter writer = response.getWriter();
        writer.println("Name:" + name);
        writer.println("studentId:" + id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
