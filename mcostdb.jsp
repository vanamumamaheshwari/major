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
      <h3>Maintenance Cost</h3>
    </div>
    
    <div class="col-md-8 col-md-offset-2">
      <form action="">
        <div class="row">
    <%
    try
    {
    	String a=request.getParameter("fram");
    	double aa=Double.parseDouble(a);
    	System.out.println("fram:"+a);
    	String b=request.getParameter("frsm");
    	double bb=Double.parseDouble(b);
    	System.out.println("frsm:"+b);
    	String c=request.getParameter("noc");
    	double cc=Double.parseDouble(c);
    	System.out.println("noc:"+c);
    	String f=request.getParameter("rc");
    	double ff=Double.parseDouble(f);
    	System.out.println("rc:"+f);
    	String g=request.getParameter("rt");
    	double gg=Double.parseDouble(g);
    	System.out.println("rt:"+g);
        %>
        <div class="col-md-6">
          <label>Failure Rate Of PS when AM:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=a %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
          <label>Failure Rate Of PS when SM:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=b %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
          <label>Number of Cycle before failure occure:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=c %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        <%
    	List<Double> l=new ArrayList<Double>();
    	Connection conn=databaseconnection.getconnection();  
        String sql="select sum(difference) as s from mode group by pod";
        PreparedStatement ps=conn.prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
        	double d=Double.parseDouble(rs.getString("s"));
        	l.add(d);
        }
        double sum1 = l.get(0);
        System.out.println("sum1:"+sum1);
        double sum2 = l.get(1);
        System.out.println("sum2:"+sum2);
        
        Class.forName("com.mysql.jdbc.Driver");	
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/servers","root","admin");  
        // physical servers 1
        double sum3=0;
        String sql2="select sum(time) as s from ps1";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2=ps2.executeQuery();
        while(rs2.next())
        {
        	sum3=Double.parseDouble(rs2.getString("s"));
        }
        System.out.println("am1:"+sum3);
     // physical servers 2
        double sum4 = 0;
        String sql3="select sum(time) as s1 from ps2";
        PreparedStatement ps3=con.prepareStatement(sql3);
        ResultSet rs3=ps3.executeQuery();
        while(rs3.next())
        {
        	sum4=Double.parseDouble(rs3.getString("s1"));
        }
        System.out.println("am2:"+sum4);
     // physical servers 3
        double sum5 = 0;
        String sql4="select sum(time) as s from ps3";
        PreparedStatement ps4=con.prepareStatement(sql4);
        ResultSet rs4=ps4.executeQuery();
        while(rs4.next())
        {
        	sum5=Double.parseDouble(rs4.getString("s"));
        }
        System.out.println("am3:"+sum5);
     // physical servers 3
        double sum6 = 0;
        String sql5="select sum(time) as s from ps4";
        PreparedStatement ps5=con.prepareStatement(sql5);
        ResultSet rs5=ps5.executeQuery();
        while(rs5.next())
        {
        	sum6=Double.parseDouble(rs5.getString("s"));
        }
        System.out.println("am4:"+sum6);
        
        //sleep mode
        double sm1=sum1-sum3; 
        System.out.println("sm1:"+sm1);
        double sm2=sum1-sum4;  
        System.out.println("sm2:"+sm2);
        double sm3=sum2-sum5;  
        System.out.println("sm3:"+sm3);
        double sm4=sum2-sum6; 
        System.out.println("sm4:"+sm4);
        
        
        //count
        double c1 = 0;
        String sql6="select count(id) as c from ps1";
        PreparedStatement ps6=con.prepareStatement(sql6);
        ResultSet rs6=ps6.executeQuery();
        if(rs6.next())
        {
        	c1=Double.parseDouble(rs6.getString("c"));
        }
        System.out.println("c1:"+c1);
        double c2 = 0;
        String sql7="select count(id) as c1 from ps2";
        PreparedStatement ps7=con.prepareStatement(sql7);
        ResultSet rs7=ps7.executeQuery();
        if(rs7.next())
        {
        	c2=Double.parseDouble(rs7.getString("c1"));
        }
        System.out.println("c2:"+c2);
        double c3 = 0;
        String sql8="select count(id) as c2 from ps3";
        PreparedStatement ps8=con.prepareStatement(sql8);
        ResultSet rs8=ps8.executeQuery();
        if(rs8.next())
        {
        	c3=Double.parseDouble(rs8.getString("c2"));
        }
        System.out.println("c3:"+c3);
        double c4 = 0;
        String sql9="select count(id) as c3 from ps4";
        PreparedStatement ps9=con.prepareStatement(sql9);
        ResultSet rs9=ps9.executeQuery();
        if(rs9.next())
        {
        	c4=Double.parseDouble(rs9.getString("c3"));
        }
        System.out.println("c4:"+c4);
        
        //failure rate
        double fr=aa*(1-(sm1/sum1))+bb*(sm1/sum1)+c1/cc;
        System.out.println("failure rate of ps1:"+fr);
        double fr1=aa*(1-(sm2/sum1))+bb*(sm2/sum1)+c2/cc;
        System.out.println("failure rate of ps2:"+fr1);
        double fr2=aa*(1-(sm3/sum2))+bb*(sm3/sum2)+c3/cc;
        System.out.println("failure rate of ps3:"+fr2);
        double fr3=aa*(1-(sm4/sum2))+bb*(sm4/sum2)+c4/cc;
        System.out.println("failure rate of ps4:"+fr3);
        %>
        <div class="col-md-6">
          <label>Failure Rate of PS1:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=fr %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
          <label>Failure Rate of PS2:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=fr1 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
          <label>Failure Rate of PS3:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=fr2 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
          <label>Failure Rate of PS4:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=fr3 %>" class="form-control" readonly="readonly">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        <%
        
        //maintenance Cost
        double mc=ff*gg*(fr+fr1+fr2+fr3);
        %>
        <div class="col-md-6">
          <label>Total Maintenance Cost is:</label>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" value="<%=mc %>" class="form-control" readonly="readonly">
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
