<%@page import="java.text.SimpleDateFormat"%>
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
	String id=request.getParameter("id");
	System.out.println("id :"+id);
	String pd=request.getParameter("pd");
	System.out.println("pod :"+pd);
	Connection con=databaseconnection.getconnection();
	String sql="update timeslot set state=? where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, "ON");
	ps.setString(2, id);
	ps.execute();
	
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	String DATE_FORMAT = "HH:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now) ;
    System.out.println("current time :"+strDateNew);
    
    String sql1="insert into mode(pod,start,end,difference) values(?,?,?,?)";
    PreparedStatement ps1=con.prepareStatement(sql1);
    ps1.setString(1, pd);
    ps1.setString(2, strDateNew);
    ps1.setString(3, "");
    ps1.setString(4, "");
    ps1.execute();
    
    
	response.sendRedirect("nwmhome.jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>