<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>
			Administrator 
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
<body>
	<div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						Smart Parking
					</h1>
				</div>	
	</div>
	<div id="banner">
				<div class="captions">
				</div>
				<img src="images/banner.jpg" alt="" />
			
	</div>
			
			<div id="nav">
					<ul>
						<li class="first">
							<a href="home.jsp">Home</a>
						</li>
						<li>
							<a href="generalinfo.jsp">Entry</a>
						</li>
						<li>
							<a href="exit.jsp">Exit </a>
						</li>
						<li>
							<a href="index.jsp">Administrator</a>
						</li>
						
						<li>
							<a href="contactus.jsp">Contact us</a>
						</li>
					</ul><br class="clear" />
				</div>
				
				<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
				%>
				
				
				
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
				%>
			<div id="main">
			<table align="right">
				<tr align="center"><td style="color: navy;"><B></B></td></tr>
				<tr><td><div>
					<marquee direction="#" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">
					</marquee>
				</div></td></tr>
			</table>
		
		<div id="sidebar">
					<div class="box">
					
					<form method="post" action="loginprocess.jsp" >
						<table>
						<tr><td style="color:navy;"><B> Admin Login  </B></td></tr>
						<tr><td><br></td></tr>
						<tr><td>Area:</td><td><select name="area">
						<option>Select an Area</option>
					<option>GT</option>
					<option>WTP</option>
					<option>HyperCity</option>
						</select></td></tr>
						<tr><td><br></td></tr>
						<tr>
						<td>User Name:</td>
						<td><input type="text" name="username"/></td>
						</tr>
						<tr><td><br></td></tr>
						<tr><td>Password:</td>
						<td><input type="password" name="userpass"/></td>
						</tr>	
						<tr><td><br></td></tr>
						<tr><td></td>
						<td><input type="submit" value="Sign in"></td></tr>
						</table>
					</form>		 
					</div>
			</div><br class="clear" />
			</div>		



	
			<div id="header">
					<h4>
						
					</h4>
			</div>

</div>
</body>
</html>