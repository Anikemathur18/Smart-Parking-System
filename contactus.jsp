<html>
<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ page import="java.sql.*"%>
<title>
ContactUs
</title>




<body>
	<Font style="color: navy;" size="4">Contact Us:</Font>
	<form method="post" name="myform" id="myform" action="query.jsp">
	<table width="100%">
	<tr>
	<td>
	<table width="55%" align="left" >
	<tr><td><img src="images/pic01.jpg"/></td>
	<td><Font style="color: navy;" size="3"><B>Your Query:</B></Font><br>
	
	<textarea name="query" style="width: 550px; height:150px"></textarea><br>
	<Font style="color: navy;" size="2"><B>Email:</B></Font><input type="text" name="email" style="width: 200px; "/>
	<Font style="color: navy;" size="2"><B>Mobile NO.:</B></Font><input type="text" name="mobileno" style="width: 200px; "/>
	<input type="submit" value="submit" style="padding: 5px 5px" >
	</td>
	</tr>
	</table>
	
	</td>
	
	<%-- <%
			String query = request.getParameter("query");
		    String email = request.getParameter("email");
		    String mobileno = request.getParameter("mobileno");

		    try
		    {
		    	Class.forName("com.mysql.jdbc.Driver");
		    	Connection conn=DriverManager.getConnection("jdbc.mysql://localhost:3307/sparking","root","");
		    	Statement stmt=conn.createStatement();
		    	stmt.execute("insert into query values('"+query+"','"+email+"','"+mobileno+"')");		    	
			conn.close();
			//String redirectURL = "http://localhost:8080/Doctor/docreg.html";
			//response.sendRedirect(redirectURL);
		    }
		    catch(Exception e)
		    {
				
		    }
%>
	
 --%>	
	<td>
	<table >
	<Font style="color: navy;" size="3">Email id:2015pietcsaniket@poornima.org</Font><br>
	<Font style="color: navy;" size="3">Email id:2015pietcskartik049@poornima.org</Font><br>
	<Font style="color: navy;" size="3">Email id:2015pietcsmahesh058@poornima.org</Font><br>
	</td></tr>
	</table>
	</td>
	</tr>
	
	</table>
	</form>
	
	</body>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>