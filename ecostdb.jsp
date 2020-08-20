<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconn.databaseconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gusto</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/tstyle.css">
   
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<div style="width: 100%; height: 100px; background-color: #4286f4; color: white;">
<p align="center" style="font-size: 1.2cm; margin-top: 50px; 
	font-family: 'Rochester', cursive; text-decoration: underline; padding-top: 10px;">An Approach to Balance Maintenance Costs and Electricity Consumption in Cloud Data Centers</p>
</div>

<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="adhome.jsp" class="page-scroll">Home</a></li>
        <li><a href="udatails.jsp" class="page-scroll">User</a></li>
        <li><a href="upackage.jsp" class="page-scroll">User Package</a></li>
        <li><a href="mcost.jsp" class="page-scroll">Maintenance</a></li>
        <li><a href="ecost.jsp" class="page-scroll">Electricity</a></li>
        <li><a href="chart.jsp" class="page-scroll">Chart</a></li>
        <li><a href="admin.jsp" class="page-scroll">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="contact" class="text-center">
  <div class="container">
    <div class="section-title text-center">
      <h3>Electricity Cost</h3>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <form>
        <div class="row" style="height: 400px;">
        <%
        try
        {
        	String a=request.getParameter("ec");
        	System.out.println(""+a);
        	%>
        	<div class="col-md-6">
          <label>Electricity Cost of 1 Unit:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=a %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
        	 Class.forName("com.mysql.jdbc.Driver");	
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servers","root","admin");  
            // physical servers 1
            double sum3=0;
            double c=0;
            String sql2="select time,heat from ps1";
            PreparedStatement ps2=con.prepareStatement(sql2);
            ResultSet rs2=ps2.executeQuery();
            while(rs2.next())
            {            	
            	double t=Double.parseDouble(rs2.getString("time"));
            	int h=Integer.parseInt(rs2.getString("heat"));
            	if(h<=10 && h>0)
            	{
            		c=2.0;
            	}
            	else if(h>10 && h<=20)
            	{
            		c=2.5;
            	}
            	else if(h>20 && h<=30)
            	{
            		c=3.0;
            	}
            	else if(h>30 && h<=40)
            	{
            		c=3.5;
            	}
            	else if(h>40 && h<=50)
            	{
            		c=4.0;
            	}
            	sum3=t*c;
            }
            %>
        	<div class="col-md-6">
          <label>Electricity Cost of PS1:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=sum3 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
            System.out.println("ecost:"+sum3);
         // physical servers 2
            double sum4=0;
            double c1=0;
            String sql3="select time,heat from ps2";
            PreparedStatement ps3=con.prepareStatement(sql3);
            ResultSet rs3=ps3.executeQuery();
            while(rs3.next())
            {            	
            	double t=Double.parseDouble(rs3.getString("time"));
            	int h=Integer.parseInt(rs3.getString("heat"));
            	if(h<=10 && h>0)
            	{
            		c1=2.0;
            	}
            	else if(h>10 && h<=20)
            	{
            		c1=2.5;
            	}
            	else if(h>20 && h<=30)
            	{
            		c1=3.0;
            	}
            	else if(h>30 && h<=40)
            	{
            		c1=3.5;
            	}
            	else if(h>40 && h<=50)
            	{
            		c1=4.0;
            	}
            	sum4=t*c1;
            }
            %>
        	<div class="col-md-6">
          <label>Electricity Cost of PS2:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=sum4 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
            System.out.println("ecost:"+sum4);
         // physical servers 3
            double sum5=0;
            double c2=0;
            String sql4="select time,heat from ps1";
            PreparedStatement ps4=con.prepareStatement(sql4);
            ResultSet rs4=ps4.executeQuery();
            while(rs4.next())
            {            	
            	double t=Double.parseDouble(rs4.getString("time"));
            	int h=Integer.parseInt(rs4.getString("heat"));
            	if(h<=10 && h>0)
            	{
            		c2=2.0;
            	}
            	else if(h>10 && h<=20)
            	{
            		c2=2.5;
            	}
            	else if(h>20 && h<=30)
            	{
            		c2=3.0;
            	}
            	else if(h>30 && h<=40)
            	{
            		c2=3.5;
            	}
            	else if(h>40 && h<=50)
            	{
            		c2=4.0;
            	}
            	sum5=t*c2;
            }
            %>
        	<div class="col-md-6">
          <label>Electricity Cost of PS3:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=sum5 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
            System.out.println("ecost:"+sum5);
         // physical servers 3
            double sum6=0;
            double c3=0;
            String sql5="select time,heat from ps1";
            PreparedStatement ps5=con.prepareStatement(sql5);
            ResultSet rs5=ps5.executeQuery();
            while(rs5.next())
            {            	
            	double t=Double.parseDouble(rs5.getString("time"));
            	int h=Integer.parseInt(rs5.getString("heat"));
            	if(h<=10 && h>0)
            	{
            		c3=2.0;
            	}
            	else if(h>10 && h<=20)
            	{
            		c3=2.5;
            	}
            	else if(h>20 && h<=30)
            	{
            		c3=3.0;
            	}
            	else if(h>30 && h<=40)
            	{
            		c3=3.5;
            	}
            	else if(h>40 && h<=50)
            	{
            		c3=4.0;
            	}
            	sum6=t*c3;
            }
            %>
        	<div class="col-md-6">
          <label>Electricity Cost of PS4:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=sum6 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
            System.out.println("ecost:"+sum6);
        	double to=sum3+sum4+sum5+sum6;
        	%>
        	<div class="col-md-6">
          <label>Total Electricity Cost:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=to %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        	<%
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        %>          
        </div>
      </form>
    </div>       
  </div>
</div>
<!-- Contact Section -->
<div id="footer">
  <div class="container text-center">
  </div>
</div>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
