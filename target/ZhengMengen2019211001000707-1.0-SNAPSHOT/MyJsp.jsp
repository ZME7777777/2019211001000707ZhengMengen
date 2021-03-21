<%--
  Created by IntelliJ IDEA.
  User: 郑蒙恩
  Date: 2021/3/21
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="index.jsp">go to ecjtu</a> <!--method is GET-->
<form method="post"><!--what is method when we use form?--><!--its GET,Why?  default is GET-->
    Name :<input type="text" name="name"><br/>
    Id :<input type="text" name="id"><br/>
    <input type="submit" value="Send data to server"/>
</form>
</body>
</html>
