<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ȸ������</title>
</head>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<style type="text/css">
#board {
	position: absolute;
	width: 63px;
	height: 19px;
	z-index: 1;
	left: 275px;
	top: 58px;
	visibility: visible;
}
#studyGroup {
	position: absolute;
	width: 30px;
	height: 19px;
	z-index: 2;
	left: 372px;
	top: 57px;
	visibility: visible;
}
#K-Point {
	position: absolute;
	width: 54px;
	height: 18px;
	z-index: 3;
	left: 443px;	
	top: 57px;
	visibility: visible;
}
#boardSub {
	position: absolute;
	width: 260px;
	height: 19px;
	z-index: 4;
	left: 275px;
	top: 75px;
	visibility: hidden;
}
#studyGroupSub {
	position: absolute;
	width: 165px;
	height: 20px;
	z-index: 5;
	left: 372px;
	top: 74px;
	visibility: hidden;
}
#KPointSub {
	position: absolute;
	width: 140px;
	height: 20px;
	z-index: 6;
	left: 443px;
	top: 74px;
	visibility: hidden;
}
#StudyGroupLeftMenu {
	position: absolute;
	width: 144px;
	height: 177px;
	z-index: 7;
	top: 242px;
	left: 13px;
}
.buttonstyle {
	background-color: #00B0F0;
}
.buttonstyle {
	color: #FFFFFF;
	background-color: #00B0F0;
	border-top-color: #FFF;
	border-right-color: #FFF;
	border-bottom-color: #FFF;
	border-left-color: #FFF;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	width : 140px;
}
</style>
<script type="text/javascript">
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
</script>
<Script>

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
</Script>
<style type="text/css">
	A:link {text-decoration:none}
	A:visited {text-decoration:none}
	A:active {text-decoration:none}
	A:hover {text-decoration:none}
</style>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">


</Table>

<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<table id="__01" width="1025" height="769" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" rowspan="3">&nbsp;</td>
		<td colspan="3"><img src="images/pagebg_02.jpg" width="661" height="202" />
	  <div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="���� ���"><strong>��ȸ</strong></font> </div>
	  <div id="K-Point" onclick="MM_showHideLayers('KPointSub','','show')"><font color="Gray" size="2" face="���� ���"><strong>K-Point</strong></font></div>
      <div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="���� ���"><strong>��������</strong></font></div></td>
		<td colspan="3">
			<img src="images/pagebg_03.jpg" width="327" height="202" alt=""></td>
		<td colspan="3" rowspan="2">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="202" alt=""></td>
	</tr>
	<tr>
		<td colspan="6" align="right"><strong><form action = "Logout.jsp" name = "Logout">
			<Input type = "submit" value = "Logout"></Input></form></strong><strong></strong></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="48" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images/pagebg_06.jpg" width="886" height="1" alt=""></td>
		<td colspan="2" rowspan="2"><a href="http://www.kookmin.ac.kr"><img src="images/pagebg_07.jpg" width="108" height="77" border="0" alt=""></a></td>
		<td colspan="2" rowspan="2"></td>
		<td><div id="boardSub" onclick="MM_showHideLayers('apDiv4','','hide')" onmouseout="MM_showHideLayers('boardSub','','hide')"><font color="White" size="1.9" face="���� ���">��������  ���Ȱ��/������  �����Խ���  ����</font></div>
<div id="studyGroupSub" ><font color="White" size="1.9" face="���� ���">
	<a href="http://localhost:8080/WebP/HansarangApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">�ѻ��</a>
	<a href="http://localhost:8080/WebP/ModuriApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">��θ�</a> 
	<a href="http://localhost:8080/WebP/EBizenApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">E-Bizen</a> 
	<a href="http://localhost:8080/WebP/ItisApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">ITIS</a>  
	<a href="http://localhost:8080/WebP/MisaApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">MISA</a></font></div>
		  <div id="KPointSub" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="���� ���">K-Point��? K-Point��û</font></div>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
	

	  <td rowspan="5">&nbsp;</td>
		
		<td colspan="2" rowspan="3" align="center" valign="top">
			<img src="images/sidemenu.jpg" alt="" width="143" height="200">
			<div id="StudyGroupLeftMenu"><font size="2" face="���� ���" color="White">
			  <p><br><br><form action = "member_page.jsp"  name ="��������" class="buttonstyle"  width="143">
			  <input type = "submit" class="buttonstyle" value = "ȸ����������"></form></a></p>
			  <p><form action = "kpoint_total.jsp" name ="kpoint" class="buttonstyle"  width="143">
				<input type = "submit" class="buttonstyle" value = "���� K-Point����" ></form></a></p>
			  <p><form action = "myGroup.jsp" name = "Group" class="buttonstyle"   width="143">
				<input type = "submit" class="buttonstyle" value = "MY��ȸ"  width="143"></form></a></p>
              <p><form action = "Member_removal_check.jsp" name ="removal" class="buttonstyle"  width="143">
					<input type = "submit" class="buttonstyle" value = "ȸ��Ż��"  width="143">
					</form></a>
	  </p></font></div></td>
		<td rowspan="5">&nbsp;</td>
		<td colspan="2" rowspan="4" align="center" valign="top" >
		<%
request.setCharacterEncoding("euc-kr");
String id = (String)session.getAttribute("id");
String pass = (String)session.getAttribute("pass");
String sessionID ="yes";


%>
</body>
<Form action = "Member_removal.jsp" name ="remove" >

<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<TR>
<TD bgcolor ='00b0f0' align ='right'>
<Font size ='2' color="white" face="�������">ID: </Font>
</TD>
<TD bgcolor ='00b0f0' align ='center'>
<Input type = 'text' maxlength=10 size=10 name='id' value ="<%=id %>" readonly="readonly">
</TD>


<TR>
<TD bgcolor ='00b0f0' align ='right'>
<Font size ='2' color="white" face="�������">��й�ȣ: </Font>
</TD>
<TD bgcolor ='00b0f0' align ='center'>
<Input type = 'text' maxlength=10 size=10 name='pass'>  



</TR>

</TD>
</TR>


<TR><font size="2" face="�������">
Ż�� ��ư�� ������ �ٷ� Ż�� ����˴ϴ�.<Br>
�׷��� Ż���Ͻðڽ��ϱ�?
</font></TD>
</TR><br>


</Table>
<Input type='submit' value='Ż��' method = 'post' >
</Form>
		
		</td>
		<td rowspan="5">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="76" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" bgcolor="#FFFFFF"><a href="http://ktis.kookmin.ac.kr/"><img src="images/pagebg_14.jpg" width="109" height="80" border="0" alt=""></a></td>
		<td rowspan="4">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="80" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="3">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="52" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="251" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="21" alt=""></td>
	</tr>
	<tr>
		<td colspan="11">
			<img src="images/pagebg_19.jpg" width="1024" height="37" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="37" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="13" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="142" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="12" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="507" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="217" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="8" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="102" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="6" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="15" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
<!-- End Save for Web Slices -->
</FORM>


<%




try{
String strUser ="yes";
String strSession = session.getAttribute("user").toString();
if(!strUser.equals(strSession)){
%>

<TR>
		<TD align ='center'>
		<Font size =2>�α����ϼ���</Font>
		</TD>
  </TR>
		
<TR>
<TD align= 'center'>
<a href ="Login.jsp">[�α���]</a>
</TD>
</TR>
<%
}else{
	
	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	  String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
	  String dbUser = "jsp2";
	  String dbPass = "1111";
	  Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
%>
<TR>
		<TD align ='center'>
		<Font size =2>ȸ������������</Font>
		</TD>
  </TR>
		<TR>
		<TD align ='center'>
		<Font size =2><%=id %>�� ȯ���մϴ�</Font>
		</TD>
		</TR>


<TR>
<TD align= 'center' bgcolor="#FFFFFF">
<Font size =2>�� �������� ȸ�����Ը� �����Ǵ� �������Դϴ�.</Font>


</TD>
</TR>

</Form>
<%}
} catch(NullPointerException e){ %>
<TR>
		<TD align ='center'>
		<Font size =2>�α����ϼ���</Font>
		</TD>
  </TR>
		
<TR>
<TD align= 'center'>
<a href ="Login.jsp">[�α���]</a> 
</TD>
</TR>
<%} %>

</Table>
</body>
</html>