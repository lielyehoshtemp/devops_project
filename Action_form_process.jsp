<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<h1>Form Processing</h1>
 
<p><b>Welcome User:</b>
   <%= request.getParameter("username")%>
</p>
<p><b>Your Password is:</b>
    <%= request.getParameter("password")%>
 </p>
 <p><b>Your Mail is:</b>
    <%= request.getParameter("mail")%>
 </p>
 <img src="https://storage.googleapis.com/liel-bucket/devops/Picture1.jpg">

</body>
</html>