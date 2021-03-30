<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String userid=request.getParameter("usr");
String pwd=request.getParameter("pwd");

if(userid.equals("am")&& pwd.equals("am"))
{

}
%>
<head>
<style>
p {text-align: center;}
</style>
</head>
<body>


<p><a href="addorphanage.html">Add New Orphanage</a></p>

</body>
</html>