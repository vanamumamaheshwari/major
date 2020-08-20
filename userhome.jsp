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
    <%
    String s=(String)session.getAttribute("email");
    System.out.println("emailid: "+s);
    %>
    <style type="text/css">
    table tr td {
	width: 200px;
	height: 40px;
	text-align: left;
	font-size: 18px;
	background-color: aqua;
	color: blue;
}
    </style>
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
        <li><a href="userhome.jsp" class="page-scroll">Home</a></li>
        <li><a href="cservice.jsp" class="page-scroll">Cloud</a></li>
        <li><a href="statuscheck.jsp" class="page-scroll">Upload</a></li>
        <li><a href="fordownload.jsp" class="page-scroll">Download</a></li>
        <li><a href="user.jsp" class="page-scroll">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="team">
  <div class="container">
    <div id="row">
      <div class="col-md-6">
        <div class="col-md-10 col-md-offset-1">
          <div class="section-title">
            <h2>User Cloud Details</h2>
          </div>
          <div style="padding: 50px; background-color: aqua;" >
          <table>
         
          <%
          String a=null,b=null,c=null,d=null,e=null,f=null,g=null;
          Connection con=databaseconnection.getconnection();
    		String sql="select processor,ram,harddisk,bandwidth,ip,price,status from package inner join upackage on upackage.pid=package.id where upackage.emailid=?";
    		PreparedStatement ps=con.prepareStatement(sql);
    		ps.setString(1, s);
    		ResultSet rs=ps.executeQuery();
    		if(rs.next()){
    			%>
    			 <tr><td>Processor</td><td>:<%=rs.getString("processor") %></td><td>GH</td></tr>
          <tr><td>Ram</td><td>:<%=rs.getString("ram") %></td><td>GB</td></tr>
          <tr><td>Hard Disk</td><td>:<%=rs.getString("harddisk") %></td><td>TB</td></tr>
          <tr><td>Band width</td><td>:<%=rs.getString("bandwidth") %></td><td>MB</td></tr>
          <tr><td>Ip</td><td>:<%=rs.getString("ip") %></td><td>IP</td></tr>
          <tr><td>Price</td><td>:<%=rs.getString("price") %></td><td>Doller</td></tr>
          <tr><td>Status</td><td>:<%=rs.getString("status") %></td><td>status</td></tr>
    			<%
    		}
          %>
          </table>
          </div>
          
          
      
        </div>
      </div>
      <div class="col-md-6">
        <div class="team-img"><img src="img/gallery/user-login.jpg" alt="..."></div>
      </div>
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
