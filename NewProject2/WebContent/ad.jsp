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

User u=UserDao.getRecordg(name);
String s=u.getName();


%>


<head>
<style> 
h1 {text-align: center;}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}
</style>
</head>
<body>

<h1><p>Adoption Form</p></h1>

<form action="save_adoption_order.jsp" method="post">

  <label for="fname">Adopting Child for Orphane</label>
  <input type="text" id="fname" name="orphanage" value=<%= u.getName()%>>
  
  <label for="lname">Enter Your First Name</label>
  <input type="text" id="lname" name="first_name" >
  
  <label for="lname">Enter Your Last Name</label>
  <input type="text" id="lname" name="last_name" >
  
  <label for="lname">Enter Contact No</label>
  <input type="text" id="lname" name="cno" >
  
  <label for="lname">Enter Email Id</label>
  <input type="text" id="lname" name="email_id" >
    
    <input type="submit" Value="Submit">
</form>

</body>
</html>