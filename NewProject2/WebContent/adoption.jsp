<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String name=request.getParameter("name");

User u=UserDao.getRecordByName(name);


%>

<form action="reg.jsp" method="post">


First name: <input type="text" name="fname"><br><br>
Last name: <input type="text" name="lname"/><br><br>
contact no: <input type="text" name="cno"/><br><br>
Email: <input type="text" name="email"/><br><br>
<input type="submit"/>


<p>ch</p>
</body>
</html>