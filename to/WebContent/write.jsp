<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	Statement stmt=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/todos?serverTimezone=UTC","root","mk0313");
	String item=request.getParameter("todos-item");
	String sql="insert into todos(item) values('"  + item + "')";
	stmt =conn.createStatement();
	stmt.executeUpdate(sql);
	response.sendRedirect("todo.jsp");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
</body>
</html>