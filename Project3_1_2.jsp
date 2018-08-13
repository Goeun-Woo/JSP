 <%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
    <% request.setCharacterEncoding("euc-kr"); %>
    <%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원등록성공</title>
<style>
	a:link{font-family:""; color:black; text-decoration:none;}
	a:visited{font-family:""; color:black; text-decoration:none;}
	a:hover{font-family:""; color:black; text-decoration:underline;}

</style>
</head>
<script type="text/javascript">
function BackToLogin(){
	
	
	
}
</script>
<body>
<%
Connection conn=null;
PreparedStatement pstmt= null;
String message="";
String result="success";
%>
<%


String id = request.getParameter("id");
String pass = request.getParameter("pass");
String ssn = request.getParameter("ssn");
String name = request.getParameter("name");
String address = request.getParameter("address");
String email = request.getParameter("email");

String sessionID ="yes";
%>

<B><%= id %></B>
<%

try{
%>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
String dbUser = "jsp2";
String dbPass = "1111";

conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
String strSQL="";
strSQL="INSERT INTO Student(studentID, Pass, name, ssn, address, email)"+"VALUES(?,?,?,?,?,?)";
pstmt=conn.prepareStatement(strSQL);
pstmt.setString(1,id);
pstmt.setString(2,pass);
pstmt.setString(3,name);
pstmt.setString(4,ssn);
pstmt.setString(5,address);
pstmt.setString(6,email);



pstmt.executeUpdate();
%>
<%

}catch(SQLException e){
	result="system error";
	message= e.getMessage();
	out.print("result:"+result+"<br>");
	out.print("message:"+message+"<br>");	
}finally{
	if(pstmt!=null){
		pstmt.close();
	}if(conn!=null){
		conn.close();
	}
}
%>
<form action="LoginBF.jsp" onSubmit="return BackToLogin()" name="AdmissionSuccess"  >
<center><font size='3'><b>확인하기</b></font>
<table border="1">
<tr>
<td bgcolor="cccccc">ID</td>
<td><%=id %></td>
</tr>
<tr>
<td bgcolor="cccccc">이름</td>
<td><%=name %></td>
</tr>
<tr>
<td bgcolor="cccccc">Pass</td>
<td><%=pass %></td>
</tr>
</table>
<input type="submit" onclick='BackToLogin()' value="back">
</form>
</body>
</html>


