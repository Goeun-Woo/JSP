<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Calendar" %>
<%request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<title>��������</title>
<style>
a:link{font-family:" "; color:black; text-decoration:none;}
a:visited{font-family:" "; color:black; text-decoration:none;}
a:hover{font-family:" "; color:black; text-decoration:underline;}
</style>
<script type="text/javascript">
function passchk(){
 var pass = document.form.pass.value;
 var pass2 = document.form.pass2.value;
 if (pass2.length == 0 || pass2 == null) {
  document.form.chk.value = "��й�ȣ�� �Է��ϼ���";
 } else if (pass != pass2) {
  document.form.chk.value = "��й�ȣ�� �ٸ��ϴ�.";
 } else {   
  document.form.chk.value = "��й�ȣ�� �����մϴ�.";
 }
 return;
}
</script>
</head>
<body>
<%


%>
<form action = "member_page.jsp" method="post">
<%
String id= request.getParameter("id");
String pass= request.getParameter("pass");
String name= request.getParameter("name");
String ssn= request.getParameter("ssn");
String address= request.getParameter("address");
String email= request.getParameter("email");
String sessionID ="yes";


Connection conn=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
String dbUser = "jsp2";
String dbPass = "1111";
conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

PreparedStatement pstmt=null;
ResultSet rs=null;

try{
	  
	String strSQL="SELECT*FROM Student WHERE studentID=?";
	pstmt=conn.prepareStatement(strSQL);
	pstmt.setString(1,id);
	
	
	
	rs= pstmt.executeQuery();
	rs.next();

	  
	 
	strSQL="UPDATE Student SET Pass=?, address=?, email=? WHERE studentID=?";
	  String logid = rs.getString("studentID");
		out.println(logid);
	 if(logid.equals(id)){
		pstmt=conn.prepareStatement(strSQL);
		pstmt.setString(1,pass);
	
		
		pstmt.setString(2,address);
		pstmt.setString(3, email);
		pstmt.setString(4, id);
		pstmt.executeUpdate();
	
	 }
	
}catch(Exception e){
	out.print(e.toString());
		
}finally{
	if(pstmt!=null){
		pstmt.close();
	}if(conn!=null){
		conn.close();
	}
}
	
%>

<center><font size='3'><b>Ȯ���ϱ�</b></font>
<table border="1">
<tr>
<td bgcolor="cccccc">ID</td>
<td><%=id %></td>
</tr>
<tr>
<td bgcolor="cccccc">�̸�</td>
<td><%=name %></td>
</tr>
<tr>
<td bgcolor="cccccc">Pass</td>
<td><%=pass %></td>
</tr>
<tr>
<td bgcolor="cccccc">email</td>
<td><%=email %></td>
</tr>
<tr>
<td bgcolor="cccccc">�ּ�</td>
<td><%=address %></td>
</tr>

</table>
<input type="submit" value="back">
</form>

</body>
</html>
