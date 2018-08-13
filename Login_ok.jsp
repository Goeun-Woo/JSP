<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type = 'text/css'>
<title>학부생 인증</title>

	a:link{font-family:""; color:black; text-decoration:none;}
	a:visited{font-family:""; color:black; text-decoration:none;}
	a:hover{font-family:""; color:black; text-decoration:underline;}

</head>
</style>


<body>
<form action = "LoginAF.jsp" name= "Login">
<center><font size='3'><b>로그인</b></font></center>
<Table border = '0' width='1000' cellpadding='0' cellspacing='0'>
<TR>
<TD><hr size='1' noshade>
</TD>
</TR>

</Table>
<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>

<%

String radioValue=request.getParameter("side");


Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

String id = request.getParameter("id");
String pass = request.getParameter("pass");
String sessionID ="yes";
Connection conn = null;

PreparedStatement pstmt = null;
ResultSet rs = null;
ResultSet rs2 = null;


session.setAttribute("id",id);
session.setAttribute("pass",pass);
try{
	String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
	String dbUser = "jsp2";
	String dbPass = "1111";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	  Statement stmt1 = conn.createStatement();
	  Statement stmt2 = conn.createStatement();
	  
	  
	  if(radioValue.equals("Student")){
	String strSQL="SELECT studentID FROM Student WHERE studentID='"+id+"' and Pass = '"+pass+"'";
	rs = stmt1.executeQuery(strSQL);

				if(rs.next()){
				
					
		 		 session.setAttribute("user", sessionID);
				 response.sendRedirect("LoginAF.jsp");
			

				}
	
			else{
	
				out.println("로그인 실패!");
					}
	%>
	<TD>
	<input type="button" onclick="history.back();" value="Back">
	</TD>
	
	
	<%

	  }	 
	  
// if 구문	
	  
	  else if(radioValue.equals("Manager")){
				String strSQL2="SELECT *FROM Manager WHERE managerID='"+id+"' and m_pass = '"+	pass+"'";
				rs2 = stmt2.executeQuery(strSQL2);
				
				
				if(rs2.next()){
				
				 response.sendRedirect("LoginAFOfManager.jsp");


				}
	
			else{
	
				out.println("로그인 실패!");
					}
	
	 }
}   
	   catch(Exception e){
		 out.println(e);
	  
	  %>
	 	  <TR>
	  <Td align= "center">
	  <font size = 2> 회원 ID가 아닙니다.</font>
	  </Td>
	  </TR>
	  <TR>
	  <TD align = "center">
	  <a href = "Login.jsp">[로그인]</a>
	  </TD>
	  </TR>
	<%}
%>  


	
	 

</Table>
 

</Form>
</body>
</html>