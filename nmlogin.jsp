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
	String b=request.getParameter("pass");
	System.out.println("name:"+a);
	System.out.println("pass:"+b);
	if(a.equals("manager")&&b.equals("manager")){
		response.sendRedirect("nwmhome.jsp");
	}
	else
	{
		%>
		<script type="text/javascript">
		alert("enter correct name and password");
		window.location="nwmanager.jsp";
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