<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원전용</title>
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
	background-color: #FFF;
}
.buttonstyle {
	color: #FFFFFF;
	background-color: #0099FF;
	border-top-color: #FFF;
	border-right-color: #FFF;
	border-bottom-color: #FFF;
	border-left-color: #FFF;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
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
						alert("아이디를 입력하세요");
						modify.id.focus();
						return false;
					}
					else if(modify.pass.value.length<1){
						alert("비밀번호를 입력하세요");
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


<Form Name ='modify' Method ='post' action = "Member_modify_check.jsp"  >
</Table>

<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<table id="__01" width="1025" height="769" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" rowspan="3">&nbsp;</td>
		<td colspan="3"><img src="D:/images/pagebg_02.jpg" width="661" height="202" />
	  <div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>학회</strong></font> </div>
	  <div id="K-Point" onclick="MM_showHideLayers('KPointSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>K-Point</strong></font></div>
      <div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>공지사항</strong></font></div></td>
		<td colspan="3">
			<img src="D:/images/pagebg_03.jpg" width="327" height="202" alt=""></td>
		<td colspan="3" rowspan="2">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="202" alt=""></td>
	</tr>
	<tr>
		<td colspan="6" align="right"><strong>MyPage</strong><strong></strong></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="48" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="D:/images/pagebg_06.jpg" width="886" height="1" alt=""></td>
		<td colspan="2" rowspan="2"><a href="http://www.kookmin.ac.kr"><img src="D:/images/pagebg_07.jpg" width="108" height="77" border="0" alt=""></a></td>
		<td colspan="2" rowspan="2"></td>
		<td><div id="boardSub" onclick="MM_showHideLayers('apDiv4','','hide')" onmouseout="MM_showHideLayers('boardSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">공지사항  대외활동/공모전  자유게시판  뉴스</font></div>
<div id="studyGroupSub" ><font color="White" size="1.9" face="맑은 고딕">
	<a href="http://localhost:8080/WebP/HansarangApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">한사랑</a>
	<a href="http://localhost:8080/WebP/ModuriApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">모두리</a> 
	<a href="http://localhost:8080/WebP/EBizenApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">E-Bizen</a> 
	<a href="http://localhost:8080/WebP/ItisApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">ITIS</a>  
	<a href="http://localhost:8080/WebP/MisaApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">MISA</a></font></div>
		  <div id="KPointSub" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">K-Point란? K-Point신청</font></div>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
	

	  <td rowspan="5">&nbsp;</td>
		
		<td colspan="2" rowspan="3" align="center" valign="top">
			<img src="D:/images/좌측메뉴.jpg" alt="" width="143" height="200">
			<div id="StudyGroupLeftMenu"><font size="2" face="맑은 고딕" color="White">
			  <p><br><form action = "Member_modify_check.jsp"  name ="정보수정" class="buttonstyle"  width="143">
			  <input type = "submit" class="buttonstyle" value = "회원정보수정"  width="143"></form></a></p>
 
			  <p><form action = "kpoint_total.jsp" name ="kpoint" class="buttonstyle"  width="143">
				<input type = "submit" class="buttonstyle" value = "나의 K-Point점수"></form></a></p>
			  <p><form action = "ItisApply.jsp" name = "Group" class="buttonstyle"  width="143"  width="143">
				<input type = "submit" class="buttonstyle" value = "MY학회"  width="143"></form></a></p>
              <p><form action = "Member_removal_check.jsp" name ="removal" class="buttonstyle"  width="143">
					<input type = "submit" class="buttonstyle" value = "회원탈퇴"  width="143">
					</form></a>
	  </p></font></div></td>
		<td rowspan="5">&nbsp;</td>
		<td colspan="2" rowspan="4" align="center" valign="top" >
	
		<%
String id = (String)session.getAttribute("id");
String pass = (String)session.getAttribute("pass");

String sessionID ="yes";
ResultSet rs = null;
int i = -1;

try{
String strUser ="yes";
String strSession = session.getAttribute("user").toString();


	 if(!strUser.equals(strSession)){

%>
<TR>
		<TD align ='center'>
		<Font size =2>로그인하세요</Font>
		</TD>
		</TR>
		
<TR>
<TD align= 'center'>
<a href ="Login.jsp">[로그인]</a>
</TD>
</TR>
<%
}else{
	request.setCharacterEncoding("euc-kr");
	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	  String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
	  String dbUser = "jsp2";
	  String dbPass = "1111";
	  Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	  PreparedStatement pstmt = null;
	  PreparedStatement pstmt2 =null;
	
	
	 	String strSQL3 ="DELETE FROM [Group] WHERE student_ID =  ?";
	 	 pstmt2 = conn.prepareStatement(strSQL3);
	     pstmt2.setString(1,  id);
	     pstmt2.executeUpdate();  
	     
	     
	 	String strSQL2="DELETE FROM KPointRequest WHERE student_ID =  ?";
	 	 pstmt = conn.prepareStatement(strSQL2);
	     pstmt.setString(1,  id);
	     pstmt.executeUpdate();  

	 	String strSQL="DELETE FROM Student WHERE studentID='"+id+"' and Pass = '"+pass+"'";
	 	 Statement stmt1 = conn.createStatement();
		int n=stmt1.executeUpdate(strSQL);
		
		if(n>0){
		session.removeAttribute("id");
		session.removeAttribute("pass");
		
		}

%>

	
		<Font size =2>탈퇴되었습니다.</Font>
		
		

</Form>
<Form action = "Login.jsp" name = "Login"  >
<input type = "submit" name = "back" value ="로그인 페이지로">
</Form>
<%}
} catch(NullPointerException e){ %>
<TR>
		<TD align ='center'>
		<Font size =2>로그인하세요</Font>
		</TD>
		</TR>

<%} %>
		
		</td>
		<td rowspan="5">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="76" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" bgcolor="#FFFFFF"><a href="http://ktis.kookmin.ac.kr/"><img src="D:/images/pagebg_14.jpg" width="109" height="80" border="0" alt=""></a></td>
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
			<img src="D:/images/pagebg_19.jpg" width="1024" height="37" alt=""></td>
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
		<Font size =2>로그인하세요</Font>
		</TD>
  </TR>
		
<TR>
<TD align= 'center'>
<a href ="Login.jsp">[로그인]</a>
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
		<Font size =2>회원전용페이지</Font>
		</TD>
  </TR>
		<TR>
		<TD align ='center'>
		<Font size =2><%=id %>님 환영합니다</Font>
		</TD>
		</TR>


<TR>
<TD align= 'center' bgcolor="#FFFFFF">
<Font size =2>이 페이지는 회원에게만 제공되는 페이지입니다.</Font>


</TD>
</TR>

</Form>
<%}
} catch(NullPointerException e){ %>
<TR>
		<TD align ='center'>
		<Font size =2>로그인하세요</Font>
		</TD>
  </TR>
		
<TR>
<TD align= 'center'>
<a href ="Login.jsp">[로그인]</a> 
</TD>
</TR>
<%} %>

</Table>
</body>
</html>