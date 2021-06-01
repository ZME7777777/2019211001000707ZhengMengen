<%@ page import="com.ZhengMengen.lab1.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ZhengMengen.lab1.Dog" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignemnt1</title>
</head>
<body>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<h1> c:forEach loog to print 1 to 10</h1>

    <ul>
        <c:forEach var="i" begin="1" end="10">
        <li>${i}</li>
        </c:forEach>
    </ul>
    <%-- todo 1 : run assignement1.jsp  --%>
<h1> use c:forEach to print list 1,3,5,7,9 </h1>
    <u1>
        <c:forEach var="i" begin="1" end="9" step="2">
            <li>${i}</li>
        </c:forEach>
    </u1>
<h1> use c:forEach to print 2,4,6,8,10 </h1>
<u1>
    <c:forEach var="i" begin="2" end="10" step="2">
        <li>${i}</li>
    </c:forEach>
</u1>


<% String[] words ={"one","two","three","four","five","six","seven","eight","nine","ten"};
   pageContext.setAttribute("words", words);
%>
<h1>use c:forEach to print all elements of array</h1>
<u1>
    <c:forEach var="word" items="${words}">
        <li>${word}</li>
    </c:forEach>
</u1>
    <h1>use c:forEach to print "one","three","five","seven","nine"  of array</h1>
<u1>
    <c:forEach var="word" items="${words}" step="2">
        <li>${word}</li>
    </c:forEach>
</u1>
<%
List<Person> personList=new ArrayList<Person>();
personList.add(new Person("Tom",new Dog("Tommy")));
personList.add(new Person("Sam",new Dog("Sammy")));
// todo 6 : add a new person into PersonList - person name and dog name
personList.add(new Person("ZhengMengen",new Dog("ZhangJun")));
request.setAttribute("AllPerson",personList);
%>
<h1>use c:forEach to print person name :   and persons' dog name :</h1> 
<u1>
    <c:forEach var="p" items="${requestScope.AllPerson}" >
        <li>person name:${p.name}</li>
        <li>person'dog name:${p.dog.name}</li>
    </c:forEach>
</u1>
<%
    String str="one:two:three-four-five";
    pageContext.setAttribute("str",str);
%>
<h1>use c:forToken to print all</h1>
<u1>
    <c:forTokens var="s" items="${str}" delims=":-">
        <li>${s}</li>
    </c:forTokens>
</u1>
</body>words
</html>
