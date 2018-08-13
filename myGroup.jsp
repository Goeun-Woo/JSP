<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>pagebg</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	width : 107px;
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
<style type="text/css">
A:link {text-decoration:none}
A:visited {text-decoration:none}
A:active {text-decoration:none}
A:hover {text-decoration:none}
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- Save for Web Slices (pagebg.psd) -->
<body link="White" vlink="White" alink="White">
<Form action="group_removal.jsp">
<table id="__01" width="1025" height="769" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" rowspan="3">&nbsp;</td>
		<td colspan="3"><img src="images\pagebg_02.jpg" width="661" height="202" />
	  <div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="맑은고딕"><strong>학회</strong></font> </div>
	  <div id="K-Point" onclick="MM_showHideLayers('KPointSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>K-Point</strong></font></div>
      <div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="맑은고딕"><strong>공지사항</strong></font></div></td>
		<td colspan="3">
			<img src="images\pagebg_03.jpg" width="327" height="202" alt=""></td>
		<td colspan="3" rowspan="2">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="202" alt=""></td>
	</tr>
	<tr>
		<td colspan="6" align="right"><strong><form action = "Logout.jsp" name = "Logout">
			<Input type = "submit"  value = "Logout"></Input></form></strong><strong></strong></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="48" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images\pagebg_06.jpg" width="886" height="1" alt=""></td>
		<td colspan="2" rowspan="2"><a href="http://www.kookmin.ac.kr"><img src="images\pagebg_07.jpg" width="108" height="77" border="0" alt=""></a></td>
		<td colspan="2" rowspan="2"></td>
		<td><div id="boardSub" onclick="MM_showHideLayers('apDiv4','','hide')" onmouseout="MM_showHideLayers('boardSub','','hide')"><font color="White" size="1.9" face="맑은고딕">공지사항  대외활동/공모전  자유게시판  뉴스</font></div>
   <div id="studyGroupSub" ><font color="White" size="1.9" face="맑은 고딕">
	<a href="HansarangApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupSub','','hide')">한사랑</a>
	<a href="ModuriApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')">모두리</a> 
	<a href="EBizenApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')">E-Bizen</a> 
	<a href="ItisApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')">ITIS</a>  
	<a href="MisaApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')">MISA</a></font></div>
		<div id="KPointSub" ><font color="White" size="1.9" face="맑은 고딕">
	<a href="kpoint_description.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">K-Point란?</a>
	<a href="kpoint_request.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">K-Point신청</a> </font></div>
		<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>	</tr>
	<tr>
		<td rowspan="5">&nbsp;</td>
		<td colspan="2" rowspan="3" align="center" valign="top">
	  <img src="images\sidemenu.jpg" alt="" width="143" height="190">
	  			<div id="StudyGroupLeftMenu"><font size="2" face="맑은 고딕" color="White">
			  <p><br><br><form action = "member_page.jsp"  name ="정보수정" class="buttonstyle"  width="140">
			  <input type = "submit" class="buttonstyle" value = "회원정보수정"  width="143"></form></a></p>
            <p><form action = "kpoint_total.jsp" name ="kpoint" class="buttonstyle"  width="140">
				<input type = "submit" class="buttonstyle" value = "나의 K-Point점수"></form></a></p>
			  <p><form action = "myGroup.jsp" name = "Group" class="buttonstyle"  width="140" >
				<input type = "submit" class="buttonstyle" value = "MY학회"  width="143"></form></a></p>
              <p><form action = "Member_removal_check.jsp" name ="removal" class="buttonstyle"  width="140">
					<input type = "submit" class="buttonstyle" value = "회원탈퇴"  width="140">
					</form></a>
	  </p></font></div></td>
		<td rowspan="5">&nbsp;</td>
		<td colspan="2" rowspan="4" align="center" valign="top">
    <%
Connection conn=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
String dbUser = "jsp2";
String dbPass = "1111";
conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

PreparedStatement pstmt=null;
String id= (String)session.getAttribute("id");

String strSQL="SELECT*FROM [Group] WHERE student_ID=? ";
pstmt=conn.prepareStatement(strSQL);
pstmt.setString(1,id);
ResultSet rs=pstmt.executeQuery();
%>
<center><font size="3" face="맑은 고딕"><b>학회현황</b></font><br></br>
<table border="0" width="600" cellpadding="2" cellspacing="1">
<tr bgcolor="00b0f0">
<td><font size="2" color="White" face="맑은 고딕"><center><b>My 학회</b></center></font></td>
</tr>
<tr>
<%
while(rs.next()){
	String student_ID=rs.getString("student_ID");
	String groupName=rs.getString("groupName");
%>
<td bgcolor="White"><font size="2" face="맑은 고딕"><%=groupName%></font></td>
</tr>
<%
}
%>
</table>
<p>
  <%
rs.close();
pstmt.close();
conn.close();
%>
  </p>
<p>
  <input type="submit" name="submit" id="submit" value="탈퇴" />
</p></td>
		<td rowspan="5">&nbsp;</td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="76" alt=""></td>
	</tr>
	<tr>
		<td colspan="3"><a href="http://ktis.kookmin.ac.kr/"><img src="images\pagebg_14.jpg" width="109" height="80" border="0" alt=""></a></td>
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
			<img src="images\pagebg_19.jpg" width="1024" height="37" alt=""></td>
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
</Form>
</body>
</html>