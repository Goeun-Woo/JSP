<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ����</title>
<style>
	a:link{font-family:""; color:black; text-decoration:none;}
	a:visited{font-family:""; color:black; text-decoration:none;}
	a:hover{font-family:""; color:black; text-decoration:underline;}
</style>

<SCRIPT Language="JavaScript">
function check(){
	
	if(modify.id.value.length<1){
		alert("���̵� �Է��ϼ���");
		modify.id.focus();
		return false;
	}
	else if(modify.pass.value.length<1){
		alert("��й�ȣ�� �Է��ϼ���");
		modify.pass.focus();
		return false;
	}
		
	else
		modify.submit();
		return true;
	 
}
</SCRIPT>

</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
String id = (String)session.getAttribute("id");
%>
<Center><font size='3'><B>ȸ������</B></font></Center>
<Table border = '0' width='600' cellpadding='0' cellspacing='0'>
<TR>
<TD><hr size='1' noshade>
</TD>
</TR>

</Table>

<Form Name ='modify' Method ='post' Action = 'Member_modifyOK.jsp'>
<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<TR>
<TD bgcolor ='cccccc' align ='right'>
<Font size ='2'>ID: </Font>
</TD>
<TD bgcolor ='cccccc' align ='center'>
<Input type = 'text' maxlength=10 size=10 name='id' value ="<%=id %>" readonly="readonly">
</TD>

<TD bgcolor ='cccccc' align ='left'>
<Input onclick='check()' type='button' value='Ȯ��'>
</TD>

</TR>

<TR>
<TD bgcolor ='cccccc' align ='right'>
<Font size ='2'>��й�ȣ: </Font>
</TD>
<TD bgcolor ='cccccc' align ='center'>
<Input type = 'text' maxlength=10 size=10 name='pass'>  
</TD> 
<% 
//���Ƿ� text�� ����
%>

<TD bgcolor ='cccccc'>
<Font size ='2'>
<a href="Project3_1_1.jsp">[ȸ������]</a></Font>
</TD>
</TR>

</Table>

</Form>
</body>
</html>