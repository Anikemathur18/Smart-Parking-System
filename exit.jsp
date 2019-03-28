<%@ page import="java.sql.*"%>
<html>
<head>
<title>
			 Exit
</title>

<script>
	var request;
	function sendInfo()
	{
		var v=document.myform.findName.value;
		var url="findname1.jsp?val="+v;
		if(window.XMLHttpRequest){
		request=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
		request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		try
		{
		request.onreadystatechange=getInfo;
		request.open("GET",url,true);
		request.send();
		}
		catch(e){alert("Unable to connect to server");}
	}
		
	function getInfo(){
		if(request.readyState==4){
			var val=request.responseText;
			document.getElementById('hi').innerHTML=val;
		}
	}
		
	function sendGenInfo(name){
		var v=name;
		var url="getgeninfoname.jsp?val="+v;
		if(window.XMLHttpRequest){
			request=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
			request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		try
		{
			request.onreadystatechange=getGenInfo;
			request.open("GET",url,true);
			request.send();
		}
		catch(e){
			alert("Unable to connect to server");
			}
	}
		
	function getGenInfo(){
		if(request.readyState==4){
			var val=request.responseText;
			document.getElementById('hello').innerHTML=val;
		}
	}
	
	

</script>
</head>
	

<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>





<body width="100">

<div id="main">


<h3 style="color: navy;" align="center"><B>Smart Parking</B></h3>
<div id="box">

<form action="exit.jsp" name="myform" id="hello" method="post">
					<table>
					<tr><td style="color:navy;"><B> Exit Form </B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>Vehicle ID:</td><td><input type="text" name="id"/></td></tr>	
							<tr><td><br></td></tr>
					
					<tr><td>Vehicle Number:</td><td><input type="text" name="vnumber"/></td></tr>
								<tr><td><br></td></tr>
								
					<tr><td>Vehicle Type:</td><td><input type="text" name="vtype"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td>Parking Location:</td><td><input type="text" name="plocation"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td>Out Time:</td><td><input type="text" name="intime"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td></td><td><input type="submit" value="Exit"></td></tr>
					
					</table>	

<br>
</form>


</div>


<%
		String id = request.getParameter("id");
		String vnumber =request.getParameter("vnumber");
		String vtype = request.getParameter("vtype");
		String plocation =request.getParameter("plocation");
		String outtime =request.getParameter("outtime");

		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/sparking","root","");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("UPDATE details SET vnumber =  '"+ vnumber +"' ,vtype =  '"+ vtype +"', plocation='"+ plocation +"', outtime='"+ outtime +"' WHERE id = '"+ id +"' ");
		conn.close();
		//String redirectURL = "http://localhost:8080/Doctor/show.jsp";
	    //response.sendRedirect(redirectURL);
		}
		catch(Exception e)
		{
			out.print(e);
		}
		%>

</div>

</body>







<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>