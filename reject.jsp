<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconn.databaseconnection"%>
<%@page import="java.sql.Connection"%>
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
try
{
	String s=(String)session.getAttribute("email");
    System.out.println("emailid: "+s);
    
	String q=request.getParameter("id");
	System.out.println("id :"+q);
	Connection con=databaseconnection.getconnection();
	String sql="update upackage set status=? where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, "rejected");
	ps.setString(2, q);
	ps.execute(); 
	response.sendRedirect("viewureq.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>