<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<!DOCTYPE html>
<html>
<head>
<style>
h2 {text-align: center;}
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
}
</style>
</head>
<body>

<h2>Available Orphanages</h2>



<table id="t01" >
  <tr>
    <th>Orphanage List</th>
    <th>For More Details Click On Following Link</th> 
   
  </tr>
 <c:forEach items="${list}" var="u">
	<tr><td>${u.getName()}</td><td><a href="editForm.jsp?name=${u.getName()}">MoreDetails</a></td>
</td></tr>
</c:forEach>
</table>

</body>
</html>




</html>