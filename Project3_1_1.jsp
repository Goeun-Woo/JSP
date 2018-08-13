<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="EUC-KR"%>

<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<title>회원가입</title>
<SCRIPT Language="JavaScript">
function checkInfo(){
	
	if(MemberInfo.id.value.length>12||MemberInfo.id.value.length<4){
		alert("회원 아이디는 4~12글자로 입력하세요");
		MemberInfo.id.focus();
		return false;
	}
	else if(MemberInfo.pass.value.length>12||MemberInfo.pass.value.length<4){
		alert("비밀번호는 4~12글자로 입력하세요");
		MemberInfo.pass.focus();
		return false;
	}
	else if(MemberInfo.pass.value!=MemberInfo.pass2.value){
		alert("비밀번호를 정확히 입력하세요");
		MemberInfo.pass2.focus();
		return false;
	}
	else if(MemberInfo.name.value.length>4||MemberInfo.name.value.length<2){
		alert("회원 이름은 2~4글자로 입력하세요");
		MemberInfo.name.focus();
		return false;
	}
	else if(!(MemberInfo.strPhone2.value.length==3||MemberInfo.아이디.value.length==4)){
		alert("국번은 3~4자리로 입력하세요.");
		MemberInfo.strPhone2.focus();
		return false;
	}
	else if(MemberInfo.아이디.value.length!=4){
		alert("전화번호는 4자리로 입력하세요.");
		MemberInfo.strPhone3.focus();
		return false;
	}
	else
		return true;
}
</SCRIPT>

</head>
<body><%
String id = request.getParameter("id");
String name = request.getParameter("name");
String ssn = request.getParameter("ssn");
String sessionID ="yes";


Connection conn=null; 
try{
	
	
	  if(id =="" || ssn=="" || name == ""){
		  
		  %>
			<TR>
			<TD align ='center'>
			<Font size =2>정보를 입력하세요.</Font>
			</TD>
			</TR>
			
	<TR>
	<TD align= 'center'>
	<a href ="Login.jsp">[로그인]</a>
	</TD>
	</TR>
	<%
		  
	  }
	  else{
		  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
		  String dbUser = "jsp2";
		  String dbPass = "1111";
		  conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		  
		  Statement stmt1 = conn.createStatement();
		  Statement stmt2 = conn.createStatement();
		  Statement stmt3 = conn.createStatement();
		 
		  
		  String strSQL = "SELECT studentID FROM StudentList where studentID = '"+id+"'";
		  String strSQL2 = "SELECT  ssn FROM StudentList where ssn = '"+ssn+"'";
		  String strSQL3 = "SELECT  name FROM StudentList where name = '"+name+"'";
		
		  
		  ResultSet rs = stmt1.executeQuery(strSQL);
		  ResultSet rs2 = stmt2.executeQuery(strSQL2);
		  ResultSet rs3 = stmt3.executeQuery(strSQL3);
						
		  
		  rs.next();
		  rs2.next();
		  rs3.next();
		
		  
		  String logid = rs.getString("studentID");
		  String logssn = rs2.getString("ssn");
		  String logname = rs3.getString("name");
		  
		 
	
		
		  if(!id.equals(logid)){
			  
			  %>
			  
			  <TR>
			  <Td align= "center">
			  <font size = 2> 학부생이 아닙니다.</font>
			  </Td>
			  </TR>
			  <TR>
			  <TD align = "center">
			  <a href = "Project3_1_0.jsp">[학부생 인증]</a>
			  </TD>
			  </TR>
			  <%

			  }	 
			  
			  else if (!ssn.equals(logssn)){
			  %>
			  <TR>
			  <Td align= "center">
			  <font size = 2>주민등록번호가 일치하지 않습니다.</font>
			  </Td>
			  </TR>
			  <TR>
			  <TD align = "center">
			  <a href = "Project3_1_0.jsp">[학부생 인증]</a>
			  </TD>
			  </TR>
			  <%
			
			  }
			  
			  else if (!name.equals(logname)){
				  %>
				  <TR>
				  <Td align= "center">
				  <font size = 2>이름이 일치하지 않습니다.</font>
				  </Td>
				  </TR>
				  <TR>
				  <TD align = "center">
				  <a href = "Project3_1_0.jsp">[학부생 인증]</a>
				  </TD>
				  </TR>
				  <%
				  
				  }
			
			  else{
				  %>
 <Form Action="Project3_1_2.jsp" Method="post" onSubmit="return checkInfo()" name="MemberInfo">

<B><center>회원가입 페이지</center></B>

<table border="1">


<TR>
<TD bgcolor='cccccc'>학번</TD>
<TD><B><input type= "text" name="id" value=<%=id %> readonly="readonly"></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>이름</TD>
<TD><B><input type= "text" name="name" value=<%=name %> readonly="readonly" ></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>비밀번호</TD>
<TD><Input type="text" name="pass">4~12글자로 입력하세요</TD>
</TR>

<TR>
<TD bgcolor='cccccc'>비밀번호 확인</TD>
<TD><Input type="text" name="pass2"></TD>
</TR>

<TR>
<TD bgcolor='cccccc'>이메일</TD>
<TD><Input type="text" name="email"></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>주민등록번호</TD>
<TD><B><input type= "text" name="ssn" value=<%=ssn %> readonly="readonly"></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>주소</TD>
<TD><Input type="text" name="address"></TD>
</TR>

</table>
<BR>
<input type="submit" value="회원가입">
<input type="reset" value="취소">
<input type="button" onclick="history.back();" value="Back">


</Form>

<% 
			  }
	  }
	  
}
catch(SQLException e){
	
	out.println(e);
	
	  %>
 	
<%
	
}
%>



</body>
</html>