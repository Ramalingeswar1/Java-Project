<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="exam.database.*" %>
    <%@page import="exam.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		Instructions i = new Instructions();
		i.setInstruction(request.getParameter("inst"));
		int status = InstructionDao.deleteRecord(i);
		if(status > 0)
			response.sendRedirect("../List/InstructionList.jsp");
		else
			out.print("Error");
		
	%>
</body>
</html>