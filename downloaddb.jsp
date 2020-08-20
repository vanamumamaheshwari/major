<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
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
	String string =null;
	Connection connection=databaseconnection.getconnection();
	String sqll="select * from timeslot where state=?";
	PreparedStatement pss=connection.prepareStatement(sqll);
	pss.setString(1, "ON");
	ResultSet rss=pss.executeQuery();
	if(rss.next())
	{
		string=rss.getString("pod");
		System.out.println("pod:"+string);
	}
	else
	{
		System.out.println("server not available..");
	}
	
	long startTime = System.currentTimeMillis();
	System.out.println("startTime:"+startTime);
	
	
	String id=request.getParameter("id");
	System.out.println("id:"+id);
	Connection con=databaseconnection.getconnection();
	Blob file1= null;
	String data1=null;
	String fname=null;
	
	if(!(string.equals("")))
	{		
	
	try
	{
		
		String sql="select fname,file from drive where id =?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{	
			fname=rs.getString("fname");
			file1=rs.getBlob(2);
		}
		session.setAttribute("resumeBlob1",file1);    
		session.setAttribute("fname", fname);
	}
		catch(Exception e2)
	{
	out.println("Exception :"+e2);
	}
	}
	
	long stopTime = System.currentTimeMillis();
	long elapsedTime = stopTime - startTime;
	System.out.println("time :"+elapsedTime);
	int xy=(int)elapsedTime;
	
    java.util.Date now = new java.util.Date();
	String date=now.toString();
	String DATE_FORMAT = "HH:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now) ;
    System.out.println("current time :"+strDateNew);
    

    Class.forName("com.mysql.jdbc.Driver");	
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servers","root","admin");  
    
        
		int random = (int)(Math.random() * 3+ 1);
		System.out.println("vm no:"+random);
		
		System.out.println("pod 1:");
		int ht = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 1:"+ht);
		int ht1 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 2:"+ht1);
		
		System.out.println("pod 2:");
		int ht2 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 3:"+ht2);
		int ht3 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 4:"+ht3);
		if(string.equals("pod1"))
		{
			if(ht<=ht1)
			{
				System.out.println("ps1");
				String sql2="insert into ps1(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, fname);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
			else
			{
				System.out.println("ps2");
				String sql2="insert into ps2(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, fname);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht1);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
		}
		else if(string.equals("pod2"))
		{
			if(ht2<=ht3)
			{
				System.out.println("ps3");
				String sql2="insert into ps3(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, fname);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht2);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
			else
			{
				System.out.println("ps4");
				String sql2="insert into ps4(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, fname);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht3);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}	
		}
		else
		{
			System.out.println("power not in on");
		}
	
	
	
	
	
	response.sendRedirect("ndownloaddb.jsp");
}
catch(Exception ex)
{
	ex.printStackTrace();
}
%>
</body>
</html>