<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
	<%
	String username=request.getParameter("username");
	String userpass=request.getParameter("userpass");
	String branch=request.getParameter("area");
	boolean status=false;
	try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sparking", "root", "");
			PreparedStatement ps=con.prepareStatement("select * from admin where username=? and userpass=? and area=? ");
			ps.setString(1,username);
			ps.setString(2,userpass);
			ps.setString(3,branch);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			if(status){
				
				username=rs.getString(2);
				session.setAttribute("username",String.valueOf(username));
				session.setAttribute("islogin","plz sign in first");
			
			%>
			<jsp:forward page="welcome.jsp"></jsp:forward>
			<%
			}
			else{
				
				request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
				session.setAttribute("Loginmsg","Plz sign in first");
				%>
				<jsp:forward page="admin.jsp"></jsp:forward>
				<%
			}
	}
	catch(Exception e){
	e.printStackTrace();
	}

%>