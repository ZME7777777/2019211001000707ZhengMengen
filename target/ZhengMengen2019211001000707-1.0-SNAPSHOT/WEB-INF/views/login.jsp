<%--
  Created by IntelliJ IDEA.
  User: 郑蒙恩
  Date: 2021/4/2
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<b>Login</b><br>
<%
    if(!(request.getAttribute("message")==null)){
        out.println(request.getAttribute("message"));
    }
%>
<%
    Cookie[] allCookies = request.getCookies();
    String username = "",password = "",rememberMeVal = "";
    if(allCookies!=null){
        for (Cookie cookie:allCookies) {
            if(cookie.getName().equals("cUsername")){
                username = cookie.getValue();
            }
            if(cookie.getName().equals("cPassword")){
                password = cookie.getValue();
            }if(cookie.getName().equals("cRememberMe")){
                rememberMeVal = cookie.getValue();
            }

        }
    }
%>
<form method="post" action="login">
    Username: <input type="text" name="username" value="<%=username%>"><br>
    Password: <input type="password" name="password" value="<%=password%>"><br>
    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeVal.equals("1")?"checked":""%>checked/>RememberMe<br/>
    <input type="submit" value="Login">
</form>
<%@include file="footer.jsp"%>