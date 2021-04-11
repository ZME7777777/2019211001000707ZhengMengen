<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp"%>
<h2>Welcome to My Online Shop Home Page.</h2><br>
<form method="get" action="search" target="_blank">
    <input type="text" name="txt" size="30"/>
    <select name="search">
        <option value="baidu">Baidu</option>
        <option value="bing">Bing</option>
        <option value="google">Google</option>
    </select>
    <input type="submit"value="Search">
</form>
<%@include file="footer.jsp"%>