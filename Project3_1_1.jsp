<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="EUC-KR"%>

<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<title>ȸ������</title>
<SCRIPT Language="JavaScript">
function checkInfo(){
	
	if(MemberInfo.id.value.length>12||MemberInfo.id.value.length<4){
		alert("ȸ�� ���̵�� 4~12���ڷ� �Է��ϼ���");
		MemberInfo.id.focus();
		return false;
	}
	else if(MemberInfo.pass.value.length>12||MemberInfo.pass.value.length<4){
		alert("��й�ȣ�� 4~12���ڷ� �Է��ϼ���");
		MemberInfo.pass.focus();
		return false;
	}
	else if(MemberInfo.pass.value!=MemberInfo.pass2.value){
		alert("��й�ȣ�� ��Ȯ�� �Է��ϼ���");
		MemberInfo.pass2.focus();
		return false;
	}
	else if(MemberInfo.name.value.length>4||MemberInfo.name.value.length<2){
		alert("ȸ�� �̸��� 2~4���ڷ� �Է��ϼ���");
		MemberInfo.name.focus();
		return false;
	}
	else if(!(MemberInfo.strPhone2.value.length==3||MemberInfo.���̵�.value.length==4)){
		alert("������ 3~4�ڸ��� �Է��ϼ���.");
		MemberInfo.strPhone2.focus();
		return false;
	}
	else if(MemberInfo.���̵�.value.length!=4){
		alert("��ȭ��ȣ�� 4�ڸ��� �Է��ϼ���.");
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
			<Font size =2>������ �Է��ϼ���.</Font>
			</TD>
			</TR>
			
	<TR>
	<TD align= 'center'>
	<a href ="Login.jsp">[�α���]</a>
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
			  <font size = 2> �кλ��� �ƴմϴ�.</font>
			  </Td>
			  </TR>
			  <TR>
			  <TD align = "center">
			  <a href = "Project3_1_0.jsp">[�кλ� ����]</a>
			  </TD>
			  </TR>
			  <%

			  }	 
			  
			  else if (!ssn.equals(logssn)){
			  %>
			  <TR>
			  <Td align= "center">
			  <font size = 2>�ֹε�Ϲ�ȣ�� ��ġ���� �ʽ��ϴ�.</font>
			  </Td>
			  </TR>
			  <TR>
			  <TD align = "center">
			  <a href = "Project3_1_0.jsp">[�кλ� ����]</a>
			  </TD>
			  </TR>
			  <%
			
			  }
			  
			  else if (!name.equals(logname)){
				  %>
				  <TR>
				  <Td align= "center">
				  <font size = 2>�̸��� ��ġ���� �ʽ��ϴ�.</font>
				  </Td>
				  </TR>
				  <TR>
				  <TD align = "center">
				  <a href = "Project3_1_0.jsp">[�кλ� ����]</a>
				  </TD>
				  </TR>
				  <%
				  
				  }
			
			  else{
				  %>
 <Form Action="Project3_1_2.jsp" Method="post" onSubmit="return checkInfo()" name="MemberInfo">

<B><center>ȸ������ ������</center></B>

<table border="1">


<TR>
<TD bgcolor='cccccc'>�й�</TD>
<TD><B><input type= "text" name="id" value=<%=id %> readonly="readonly"></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>�̸�</TD>
<TD><B><input type= "text" name="name" value=<%=name %> readonly="readonly" ></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>��й�ȣ</TD>
<TD><Input type="text" name="pass">4~12���ڷ� �Է��ϼ���</TD>
</TR>

<TR>
<TD bgcolor='cccccc'>��й�ȣ Ȯ��</TD>
<TD><Input type="text" name="pass2"></TD>
</TR>

<TR>
<TD bgcolor='cccccc'>�̸���</TD>
<TD><Input type="text" name="email"></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>�ֹε�Ϲ�ȣ</TD>
<TD><B><input type= "text" name="ssn" value=<%=ssn %> readonly="readonly"></name></B></TD>
</TR>


<TR>
<TD bgcolor='cccccc'>�ּ�</TD>
<TD><Input type="text" name="address"></TD>
</TR>

</table>
<BR>
<input type="submit" value="ȸ������">
<input type="reset" value="���">
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