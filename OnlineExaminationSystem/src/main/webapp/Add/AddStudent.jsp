<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Add Student </title>
</head>
<style>
body
{
background:url('Images/student.jpg');
background-size:cover;


}
body form pre input[type ="text"]{
font-size:20px;
background:white;
height:50px;
}

</style>
<body>
<h2><font  face = "Sabon" color="white" style="bold">Enter Student Details</font></h2>
<form action="../StudentInsert" method="get">

<pre>
<font color="pink" size=8px>Name:         <input type="text" name="name">

<font color="black" size=4px>User id:      <input type="text" name="username">

<font color="black" size=4px>Password:     <input type="text" name="password">
	
             
             <input type="submit" value="Register" class="btn btn-outline-primary">   <input type="button" onclick="location.href='/OnlineExaminationSystem/AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='/OnlineExaminationSystem/List/StudentList.jsp'" value="Back" class="btn btn-outline-danger">
</pre>
</form>
<div>
<font color="red" >
		<%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
			<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
		</div>

</body>
</html>