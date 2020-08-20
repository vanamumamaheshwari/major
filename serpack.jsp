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
	String a=request.getParameter("proce");
	String b=request.getParameter("ram");
	String c=request.getParameter("disk");
	String d=request.getParameter("bw");
	String e=request.getParameter("ip");
	String f=request.getParameter("price");
	System.out.println("processor: "+a);
	System.out.println("ram: "+b);
	System.out.println("disk: "+c);
	System.out.println("band width: "+d);
	System.out.println("ip: "+e);
	System.out.println("price: "+f);
	Connection con=databaseconnection.getconnection();
	String sql="insert into package(processor,ram,harddisk,bandwidth,ip,price) values(?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e);
	ps.setString(6, f);
	ps.execute();
	response.sendRedirect("almhome.jsp");
	
}
catch(Exception e)
{
	System.out.print(e);
}
%>
</body>
</html>