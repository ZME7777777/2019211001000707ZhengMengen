<%--
  Created by IntelliJ IDEA.
  User: 郑蒙恩
  Date: 2021/3/21
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp"%>
This is register JSP page <br>
<form method="post" action="register">
    Username : <input type="text" name="username" required/><br/>
    Password : <input type="password" name="password" required minlength="8"/><br/>
    Email : <input type="email" name="email" required/><br/>
    Gender: <input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="female">Female<br/>
    Date of Birth : <input type="text name=" name="birthDate"><br/>
    <input type="submit" value="Register"/><br/>
</form>
<%@include file="footer.jsp"%>
