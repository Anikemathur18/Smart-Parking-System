<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
		String query=request.getParameter("query");
		String email=request.getParameter("email");
		String mobileno=request.getParameter("mobileno");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/sparking", "root", "");
		PreparedStatement ps=con.prepareStatement("insert into query values(?,?,?)");
		ps.setString(1,query);
		ps.setString(2,email);
		ps.setString(3,mobileno);

		int s=ps.executeUpdate();
		
		}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>