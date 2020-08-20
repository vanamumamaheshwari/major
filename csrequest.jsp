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
    String s=(String)session.getAttribute("email");
    System.out.println("emailid: "+s);
    %>
<%
try{
	String a=request.getParameter("id");
	String g="pending";
	System.out.println("name:"+a);
	Connection con=databaseconnection.getconnection();
	String sql="insert into upackage(pid,emailid,status) values(?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, s);
	ps.setString(3, g);
	ps.execute();
	response.sendRedirect("cservice.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>