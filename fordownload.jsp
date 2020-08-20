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
	String s=(String)session.getAttribute("email");
    System.out.println("emailid: "+s);
    
    String st=null;
    Connection con=databaseconnection.getconnection();
    String sql="select status from upackage where emailid=?";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1, s);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    	st=rs.getString("status");
    	if(st.equals("accepted"))
    	{
    		response.sendRedirect("download.jsp");
    	}
    	else
    	{
    		%>
        	<script type="text/javascript">
        	alert("pls check your status...");
        	window.location="userhome.jsp";
        	</script>
        	<%
    	}
    }
    else
    {
    	%>
    	<script type="text/javascript">
    	alert("pls buy server...");
    	window.location="nwmhome.jsp";
    	</script>
    	<%
    }    
    
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>