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
try{
	String a=request.getParameter("name");
	String b=request.getParameter("email");
	String c=request.getParameter("pass");
	String d=request.getParameter("age");
	String e=request.getParameter("gender");
	String f=request.getParameter("addr");
	System.out.println("name:"+a);
	System.out.println("email:"+b);
	System.out.println("pass:"+c);
	System.out.println("age:"+d);
	System.out.println("gender:"+e);
	System.out.println("addr:"+f);
	Connection con=databaseconnection.getconnection();
	String sql="insert into user(name,email,password,age,gender,address) values(?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e);
	ps.setString(6, f);
	ps.execute();
	response.sendRedirect("user.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>