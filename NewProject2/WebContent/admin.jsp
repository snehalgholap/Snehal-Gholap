
<%@ page langua
coding="ISO-8859-1"%>
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


	if(userid.equals("am")&& pwd.equals("am")){
		out.println("Welcom");%>
		<p>Click on the link for 
		
		
		More Information......</p>
		
		<br><br><br><br><a href="OrphanageList.jsp">OrphanageList</a><br>
		<br><br><br><a href="addorphanage.html">AddOrphanage</a><br>
		

						
	<%}else
	{
	out.println("Invalid password try again");
	}




%>
<a href="index.html">Logout</a>
<%--- <button href="index.html" >Logout</button>
 <button onclick="index.html">
      Click Here
    </button>
    
     
      <input type="button" onclick="index.html" value="w3docs" />--%>

</body>
</html>