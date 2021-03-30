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

User u=UserDao.getRecordById(name);


%>

<input type="hidden" name="name" value="<%=u.getName() %>"/>
<body style="background-color:powderblue;">

<head>
<style> 
p {text-align: center;}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid blue;
  border-radius: 4px;
}
</style>
</head>
<body>

<p> <b> Welcome to <%= u.getName()%>Orphanage</b></p>

<form action="ad.jsp" method="post">
  <label for="fname">Orphanage Name</label>
  <input type="text" id="fname" name="name" value="<%= u.getName()%>">
  <label for="lname">Child Available</label>
  <input type="text" id="lname" name="child" value="<%= u.getChild()%>">
  
   <label for="lname">Address</label>
  <input type="text" id="lname" name="address" value="<%= u.getAddress()%>">
  
   <label for="lname">Contact No</label>
  <input type="text" id="lname" name="contact_no" value="<%= u.getContact_no()%>">
  
   <label for="lname">Email</label>
  <input type="text" id="lname" name="email" value="<%= u.getEmail_id()%>">
  <input type="Submit" value=" Click Here For Adoption">
</form>

</body>
</html>