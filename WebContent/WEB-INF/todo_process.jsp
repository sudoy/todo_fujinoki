<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*, javax.naming.*, javax.sql.*" %>

<%
request.setCharacterEncoding("UTF-8");
Connection con = null;
PreparedStatement ps = null;
String sql = null;
try{
	Context initContext = new InitialContext();
	Context envContext = (Context)initContext.lookup("java:/comp/env");
	DataSource ds = (DataSource)envContext.lookup("todolist_fujinoki");
	con = ds.getConnection();
	sql = "INSERT INTO address(title, importance, deadline) VALUES (?,?,?)";
	ps = con.prepareStatement(sql);
	ps.setString(1,request.getParameter("title"));
	ps.setString(2,request.getParameter("importance"));
	ps.setString(3,request.getParameter("deadline"));

	ps.executeUpdate();
}catch(Exception e){
	throw new ServletException(e);
}finally{
	try{
		if(con != null){con.close();}
		if(ps != null){con.close();}
	}catch(Exception e){ }
}
response.sendRedirect("index.jsp");
%>
