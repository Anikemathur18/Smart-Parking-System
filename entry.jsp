<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>
			New Entry
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

function sendGenInfo(name)
{
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
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}



function setForm()
{
var url="setform.jsp";
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getForm;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getForm(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}

function makePOSTRequest(url, parameters) {
      http_request=false;
      if (window.XMLHttpRequest) { 
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
         	
            http_request.overrideMimeType('text/html');
         }
      } else if (window.ActiveXObject) { // IE
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      
		http_request.onreadystatechange = alertContents;
     	http_request.open('POST', url, true);
     	http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      	http_request.setRequestHeader("Content-length", parameters.length);
     	 http_request.setRequestHeader("Connection", "close");
      	http_request.send(parameters);
    
   }

</script>
</head>

<div id="outer">
<jsp:include page="header.jsp"></jsp:include>





<body width="100">

<div id="main">


<h3 style="color: navy;" align="center"><B>Smart Parking</B></h3>
<div id="box">

<form action="entry.jsp" name="myform" id="hello" method="post">
					<table>
					<tr><td style="color:navy;"><B> Entry Form </B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>Vehicle ID:</td><td><input type="text" name="id"/></td></tr>	
							<tr><td><br></td></tr>
					
					<tr><td>Vehicle Number:</td><td><input type="text" name="vnumber"/></td></tr>
								<tr><td><br></td></tr>
								
					<tr><td>Vehicle Type:</td><td><input type="text" name="vtype"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td>Parking Location:</td><td><input type="text" name="plocation"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td>In Time:</td><td><input type="text" name="intime"/></td></tr>	
							<tr><td><br></td></tr>
							
					<tr><td></td><td><input type="submit" value="Entry"></td></tr>
					
					</table>	

<br>
</form>


</div>

<%
			String id = request.getParameter("id");
		    String vnumber = request.getParameter("vnumber");
		    String vtype = request.getParameter("vtype");
		    String plocation = request.getParameter("plocation");
		    String intime = request.getParameter("intime");
		    try
		    {
		    	Class.forName("com.mysql.jdbc.Driver");
		    	Connection conn=DriverManager.getConnection("jdbc.mysql://localhost:3307/sparking","root","");
		    	Statement stmt=conn.createStatement();
		    	stmt.execute("insert into details values('"+id+"','"+vnumber+"','"+vtype+"','"+plocation+"','"+intime+"')");		    	
			conn.close();
			//String redirectURL = "http://localhost:8080/Doctor/docreg.html";
			//response.sendRedirect(redirectURL);
		    }
		    catch(Exception e)
		    {
				
		    }
%>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>