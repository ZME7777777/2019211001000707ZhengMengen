<%@ page import="com.ZhengMengen.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 郑蒙恩
  Date: 2021/4/11
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<%--<%
Cookie[] allCookies = request.getCookies();
    for (Cookie cookie:allCookies
         ) {
        out.println("<br/>"+cookie.getName()+"---"+ cookie.getValue());
    }
%>--%>
<%
    User u = (User)session.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td><td><%=u.getUsername()%></td>
    <tr></tr>
        <td>Password:</td><td><%=u.getPassword()%></td>
    <tr></tr>
        <td>Email:</td><td><%=u.getEmail()%></td>
    <tr></tr>
        <td>Gender:</td><td><%=u.getGender()%></td>
    <tr></tr>
        <td>Birthdate:</td><td><%=u.getBirthDate()%></td>
    </tr>
</table>
<a href="updateUser">Update</a>
<%@include file="footer.jsp"%>
