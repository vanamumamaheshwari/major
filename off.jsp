<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
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
	ps.setString(1, "OFF");
	ps.setString(2, id);
	ps.execute();
	
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	String DATE_FORMAT = "HH:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now) ;
    System.out.println("current time :"+strDateNew);
    
    String i=null;
    String stime=null;
    String sql2="select id,start from mode order by id desc";
    PreparedStatement ps2=con.prepareStatement(sql2);
    ResultSet rs2=ps2.executeQuery();
    if(rs2.next())
    {
    	i=rs2.getString("id");
    	System.out.println("curunt id:"+i);
    	stime=rs2.getString("start");
    	System.out.println("stime: "+stime);
    }
    
    
    SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
    Date date1 = format.parse(stime);
    Date date2 = format.parse(strDateNew);
    long difference = date2.getTime() - date1.getTime(); 
    long seconds = TimeUnit.MILLISECONDS.toSeconds(difference);
    String diff=Long.toString(difference);
    System.out.println("diff :"+diff);
    
    String sql1="update mode set end=?,difference=? where id=? ";
    PreparedStatement ps1=con.prepareStatement(sql1);
    ps1.setString(1, strDateNew);
    ps1.setString(2, diff);
    ps1.setString(3, i);
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