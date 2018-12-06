<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>

<script>
	var request;
	function sendInfo()
	{
		var v=document.myform.findName.value;
		var url="findname.jsp?val="+v;
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
		catch(e){
			alert("Unable to connect to server");
		}
	}
	
	function getInfo(){
		if(request.readyState==4){
		var val=request.responseText;
		document.getElementById('location').innerHTML=val;
		}
	}

	
	function sendGenInfo(name)
	{
		var v=name;
		var url="getgeninfo.jsp?val="+v;
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
				document.getElementById('getgeninfo').innerHTML=val;
			}
	}




	function viewAll(name)
	{
	var v=name;
	var url="viewall.jsp?val="+v;
	
		if(window.XMLHttpRequest){
			request=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
			request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		try
		{
			request.onreadystatechange=getAllInfo;
			request.open("GET",url,true);
			request.send();
		}
		catch(e){
			alert("Unable to connect to server");
			}
	}
	
	function getAllInfo(){
		if(request.readyState==4){
		var val=request.responseText;
		document.getElementById('bottom').innerHTML=val;
		}
	}


	function viewAllInfo(name)
	{
		var v=name;
		var url="viewallinfo.jsp?val="+v;
		
		if(window.XMLHttpRequest){
			request=new XMLHttpRequest();
		}
		else if(window.ActiveXObject){
			request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		try
		{
			request.onreadystatechange=getAllRec;
			request.open("GET",url,true);
			request.send();
		}
		catch(e){
			alert("Unable to connect to server");
			}
	}
	
	function getAllRec(){
		if(request.readyState==4){
		var val=request.responseText;
		document.getElementById('right').innerHTML=val;
		}
	}

</script>
</head>

<div id="outer">
<jsp:include page="header.jsp"></jsp:include>


<body width="100">

<div id="main">


<h3 style="color: navy;" align="center"><B>Smart Parking</B></h3>
<div id="box">

<form action="findarea.jsp" name="myform" id="hello" method="post">
					<table>
					<tr><td style="color:navy;"><B> Find Area </B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>Enter Area:</td><td><input type="text" name="id"/></td></tr>	
							<tr><td><br></td></tr>
					
					<tr><td>Vehicle Type:</td><td><input type="text" name="vnumber"/></td></tr>
								<tr><td><br></td></tr>
								
					<tr><td>Parking Time:</td><td><input type="text" name="vtype"/></td></tr>	
							<tr><td><br></td></tr>

							
					<tr><td></td><td><input type="submit" value="Find"></td></tr>
					
					</table>	

<br>
</form>

</div>

</div>

</body>

<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>