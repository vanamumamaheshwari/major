<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
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

    String fname=(String)session.getAttribute("fname");
	     try
	     {	
		 Blob b = (Blob)session.getAttribute("resumeBlob1");		
	//	out.println(b);
		if(b != null)
		{			
		
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+fname+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			
			
			os.close();
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
%>
</body>
</html>