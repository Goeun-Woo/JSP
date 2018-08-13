<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>LoginAF</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
#board {position: absolute;
	width: 63px;
	height: 19px;
	z-index: 1;
	left: 274px;
	top: 75px;
	visibility: visible;
}
#studyGroup {position: absolute;
	width: 30px;
	height: 19px;
	z-index: 2;
	left: 372px;
	top: 75px;
	visibility: visible;
}
#K-Point {
	position: absolute;
	width: 62px;
	height: 18px;
	z-index: 3;
	left: 443px;
	top: 76px;
	visibility: visible;
}
#boardSub {	position: absolute;
	width: 260px;
	height: 20px;
	z-index: 4;
	left: 274px;
	top: 94px;
	visibility: hidden;
}
#studyGroupSub {	position: absolute;
	width: 165px;
	height: 22px;
	z-index: 5;
	left: 373px;
	top: 96px;
	visibility: hidden;
}
#KPointSub {	position: absolute;
	width: 140px;
	height: 20px;
	z-index: 6;
	left: 444px;
	top: 96px;
	visibility: hidden;	
}
	a:link{font-family:""; color:black; text-decoration:none;}
	a:visited{font-family:""; color:black; text-decoration:none;}
	a:hover{font-family:""; color:black; text-decoration:underline;}
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
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%
String id= (String)session.getAttribute("id");
%>
<!-- Save for Web Slices (LoginBF.psd) -->
<table id="__01" width="1025" height="769" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" rowspan="6">
			<img src="images\LoginBF_01.jpg" width="14" height="251" alt=""></td>
		<td colspan="9">
			<img src="images\LoginBF_02.jpg" width="661" height="202" alt="">
			<div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>학회</strong></font></div>
	  <div id="K-Point" onclick="MM_showHideLayers('KPointSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>K-Point</strong></font></div>
      <div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>공지사항</strong></font></div></td>
			</td>
		<td colspan="5">
			<img src="images\LoginBF_03.jpg" width="327" height="202" alt=""></td>
		<td colspan="4" rowspan="2">
			<img src="images\LoginBF_04.jpg" width="22" height="206" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="202" alt=""></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="images\LoginBF_05.jpg" width="988" height="4" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="4" alt=""></td>
	</tr>
	<tr>
		<td colspan="7" rowspan="2">
			<img src="images\LoginBF_06.jpg" width="520" height="43" alt=""></td>
			<td colspan="8" align="right"><Font size =2><%=id%>님 환영합니다!<strong><form action = "member_page.jsp" name = "MyPage">
			<Input type = "submit" name = "MyPage" value = "MyPage"></Input></form>
			<form action = "Logout.jsp" name = "Logout">
			<Input type = "submit" name = "MyPage" value = "Logout"></Input></form></strong></td>
		<td colspan="3" rowspan="3">
			<img src="images\LoginBF_08.jpg" width="21" height="44" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="31" alt=""></td>
	</tr>
	<tr>
		<td colspan="8" rowspan="2">
			<img src="images\LoginBF_09.jpg" width="469" height="13" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="12" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="2">
			<img src="images\LoginBF_10.jpg" width="153" height="2" alt=""></td>
		<td colspan="4" rowspan="4">
			<img src="images\LoginBF_11.jpg" width="361" height="45" alt=""></td>
		<td rowspan="17">
			<img src="images\LoginBF_12.jpg" width="6" height="482" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="2">
			<img src="images\LoginBF_13.jpg" width="356" height="43" alt=""></td>
		<td colspan="2" rowspan="10">
			<img src="images\LoginBF_14.jpg" width="10" height="219" alt=""></td>
		<td colspan="3" rowspan="4"><a href="http://www.kookmin.ac.kr"><img src="images\LoginBF_15.jpg" width="108" height="77" border="0" alt=""></a></td>
		<td colspan="2" rowspan="4">
			<img src="images\LoginBF_16.jpg" width="16" height="77" alt=""></td>
		<td>
			<img src="images/LoginBF/images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td rowspan="15">
			<img src="images\LoginBF_17.jpg" width="13" height="480" alt=""></td>
		<td colspan="2" rowspan="4">
			
		<Font size =2><B><%=id %></B>님 환영합니다</Font></td>
		<td rowspan="15">
			<img src="images\LoginBF_19.jpg" width="14" height="480" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="42" alt=""></td>
	</tr>
	<tr>
		<td rowspan="6">
			<img src="images\LoginBF_20.jpg" width="11" height="166" alt=""></td>
		<td colspan="2" rowspan="5">
    		<%
Connection conn=null;
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
String dbUser = "jsp2";
String dbPass = "1111";
conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

try{

Statement stmt = conn.createStatement();
String strSQL="SELECT TOP 4 title From ExternalBoard order by num desc";
ResultSet rs=stmt.executeQuery(strSQL);

%>
<table border="0" width="320" height="145" cellpadding="1" cellspacing="1">
<%
while(rs.next()){ %>
<tr bgcolor="White">
<tr><td>
<td align=left><font size="2" face="맑은고딕"><%=rs.getString("title")%></font></td>
</td></tr>
<%
}
%>
</table>
<%
}catch(Exception e ){
out.println(e);
}
//finally{
//rs.close();
//stmt.close();
//conn.close();
//}
%>
    </td>
		<td rowspan="6">
			<img src="images\LoginBF_22.jpg" width="9" height="166" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td rowspan="6">
			<img src="images\LoginBF_23.jpg" width="12" height="166" alt=""></td>
		<td rowspan="4">
		<%

try{

Statement stmt2 = conn.createStatement();
String strSQL2="SELECT TOP 3 title From AnnouncementBoard order by num desc";
ResultSet rs=stmt2.executeQuery(strSQL2);

%>
<table border="0" width="320" height="145" cellpadding="1" cellspacing="1">
<%
while(rs.next()){ %>
<tr bgcolor="White">
<tr><td>
<td align=left><font size="2" face="맑은고딕"><%=rs.getString("title")%></font></td>
</td></tr>
<%
}
%>
</table>
<%
}catch(Exception e ){
out.println(e);
}
//finally{
//rs.close();
//stmt.close();
//conn.close();
//}
%>	
    </td>
		<td colspan="2" rowspan="6">
			<img src="images\LoginBF_25.jpg" width="10" height="166" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="33" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="2"><a href="http://ktis.kookmin.ac.kr/"><img src="images\LoginBF_26.jpg" width="109" height="80" border="0" alt=""></a></td>
		<td rowspan="12">
			<img src="images\LoginBF_27.jpg" width="15" height="404" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="33" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="11">
			<img src="images\LoginBF_28.jpg" width="140" height="371" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="47" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="10">
			<img src="images\LoginBF_29.jpg" width="109" height="324" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="42" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images\LoginBF_30.jpg" width="339" height="11" alt=""></td>
		<td colspan="2">
			<img src="images\LoginBF_31.jpg" width="336" height="10" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="4" rowspan="2">
			<img src="images\LoginBF_32.jpg" width="356" height="10" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="images\LoginBF_33.jpg" width="361" height="9" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images\LoginBF_34.jpg" width="360" height="40" alt=""></td>
		<td rowspan="6">
			<img src="images\LoginBF_35.jpg" width="1" height="262" alt=""></td>
		<td colspan="5" rowspan="2">
			<img src="images\LoginBF_36.jpg" width="359" height="41" alt=""></td>
		<td rowspan="6">
			<img src="images\LoginBF_37.jpg" width="7" height="262" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="40" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3">
			<img src="images\LoginBF_38.jpg" width="12" height="168" alt=""></td>
		<td rowspan="2">
    			<%

try{

Statement stmt3 = conn.createStatement();
String strSQL3="SELECT TOP 4 title From FreeBoard order by num desc";
ResultSet rs=stmt3.executeQuery(strSQL3);

%>
<table border="0" width="320" height="145" cellpadding="1" cellspacing="1">
<%
while(rs.next()){ %>
<tr bgcolor="White">
<tr><td>
<td align=left><font size="2" face="맑은고딕"><%=rs.getString("title")%></font></td>
</td></tr>
<%
}
%>
</table>
<%
}catch(Exception e ){
out.println(e);
}
//finally{
//rs.close();
//stmt.close();
//conn.close();
//}
%>
    </td>
		<td rowspan="3">
			<img src="images\LoginBF_40.jpg" width="9" height="168" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3">
			<img src="images\LoginBF_41.jpg" width="11" height="168" alt=""></td>
		<td colspan="2">
    			<%
try{

Statement stmt4 = conn.createStatement();
String strSQL4="SELECT TOP 4 title From NewsBoard order by num desc";
ResultSet rs=stmt4.executeQuery(strSQL4);

%>
<table border="0" width="320" height="145" cellpadding="1" cellspacing="1">
<%
while(rs.next()){ %>
<tr bgcolor="White">
<tr><td>
<td align=left><font size="2" face="맑은고딕"><%=rs.getString("title")%></font></td>
</td></tr>
<%
}
%>
</table>
<%
}catch(Exception e ){
out.println(e);
}
//finally{
//rs.close();
//stmt.close();
//conn.close();
//}
%>
    </td>
		<td colspan="2" rowspan="3">
			<img src="images\LoginBF_43.jpg" width="12" height="168" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="156" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images\LoginBF_44.jpg" width="339" height="11" alt=""></td>
		<td colspan="2" rowspan="2">
			<img src="images\LoginBF_45.jpg" width="336" height="12" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2">
			<img src="images\LoginBF_46.jpg" width="360" height="54" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images\LoginBF_47.jpg" width="359" height="53" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="53" alt=""></td>
	</tr>
	<tr>
		<td colspan="20">
			<img src="images\LoginBF_48.jpg" width="1024" height="37" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="37" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="13" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="139" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="14" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="12" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="339" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="9" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="6" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="11" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="130" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="206" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="9" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="3" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="7" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="102" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="5" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="15" height="1" alt=""></td>
		<td></td>
	</tr>
</table>

    <div id="studyGroupSub" >
	<a href="HansarangApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">한사랑</font></a>
	<a href="ModuriApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')"><font color="White" size="1.9" face="맑은 고딕">모두리</font></a> 
	<a href="EBizenApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')"><font color="White" size="1.9" face="맑은 고딕">E-Bizen</font></a> 
	<a href="ItisApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')"><font color="White" size="1.9" face="맑은 고딕">ITIS</font></a>  
	<a href="MisaApply.jsp" onclick="MM_showHideLayers('studyGroupSub','','hide')" onmouseout="MM_showHideLayers('studyGroupsub','','hide')"><font color="White" size="1.9" face="맑은 고딕">MISA</font></a></div>
<div id="boardSub" onclick="MM_showHideLayers('apDiv4','','hide')" onmouseout="MM_showHideLayers('boardSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">공지사항  대외활동/공모전  자유게시판  뉴스</font></div>
<div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>학회</strong></font></div>
<div id="KPointSub" ><font color="White" size="1.9" face="맑은 고딕">
		  <a href="kpoint_description.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">K-Point란?</font></a>
		  <a href="kpoint_request.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">K-Point신청</font></a></div>
<div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>공지사항</strong></font></div>
<!-- End Save for Web Slices -->
</body>
</html>