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
<title>Add Question</title>
</head>
<style>
body{
background:url('Images/img3.jpg');
background-size:fit;

}
body form
{
 margin-right:7cm;
}

body form pre
{
margin-left:20px;
color:navyblue;
font-family:"cursive";
background-color:white;
}
body h2{
background-color:white;
}
body form pre input[type ="text"]{
font-size:20px;
background:white;
width:50%;
height:50%;
}
body form pre input[type ="submit"] {
background-color:white;
 width:10%;
 
 border-radius:25px;
 margin-left:-1.5cm;
 margin-right:0.9cm;;
 margin-top:10px;
  background-image:linear-gradient(to right,beige);
 
  
}
body form pre input[type ="button"] {
background-color:white;
width:10%;
border-radius:25px;
 margin-top:0.3cm;
 margin-left:-0cm;
 margin-right:0cm;
  background-image:linear-gradient(to right,beige);

  
}
body form pre img
{

 margin-left:20cm;
 margin-top:-20cm;
 height:8cm;
}
</style>

<body>
<h2><font  face = "WildWest" color="skyblue">                                        ASSIGN QUESTIONS</font></h2>
<form action="../QuestionInsert" method="get">
<pre>
<font colour="black"  size=4px>Question:    
   
<input type="text" name="Question">

Option A:    

 <input type="text" name="option1">
	
Option B:   
  
<input type="text" name="option2">

Option C:     

<input type="text" name="option3">

Option D:     

<input type="text" name="option4">

Answer:      <select name="answer">
             <option >--Select One--</option>
             <option value="A">A</option>
             <option value="B">B</option>
             <option value="C">C</option>
             <option value="D">D</option>
             </select>
 <img src="Images/img3.jpg">
             <input type="submit" value="Done" class="btn btn-outline-primary"> <input type="button" onclick="location.href='../AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='../List/QuestionList.jsp'" value="Back" class="btn btn-outline-danger">
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