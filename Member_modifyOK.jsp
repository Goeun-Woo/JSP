<%@ page contentType="text/html; charset=euc-kr" language="java" import="java.sql.*" errorPage="" pageEncoding="euc-kr" %>

<%@ page import ="java.sql.*" %>

<%@page import="java.util.*"%>
<%request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>회원정보수정</title>
 
	

<style type="text/css">
a:link{font-family:""; color:black; text-decoration:none;}
	a:visited{font-family:""; color:black; text-decoration:none;}
	a:hover{font-family:""; color:black; text-decoration:underline;}
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
<style type="text/css">
	A:link {text-decoration:none}
	A:visited {text-decoration:none}
	A:active {text-decoration:none}
	A:hover {text-decoration:none}
</style>

<script>
function checkUserInput()
{
	var pass = userinput.pass.value;
	 var pass2 = userinput.pass2.value;
	 
 if (pass2.length == 0 || pass2 == null) {
  alert("비밀번호를 입력하세요");
  userinput.pass.focus();
  return false;
  
 } else if (pass != pass2) {
	 alert("비밀번호가 다릅니다");
	  userinput.pass2.focus();
	  return false;
 } else {   
	 userinput.submit();
 }

}

</script>
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


<Table align=center width='300' border='0' cellpadding='10' cellspacing='0'>
<table id="__01" width="1025" height="769" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2" rowspan="3">&nbsp;</td>
		<td colspan="3"><img src="images/pagebg_02.jpg" width="661" height="202" />
	  <div id="studyGroup" onclick="MM_showHideLayers('studyGroupSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>학회</strong></font> </div>
	  <div id="K-Point" onclick="MM_showHideLayers('KPointSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>K-Point</strong></font></div>
      <div id="board" onclick="MM_showHideLayers('boardSub','','show')"><font color="Gray" size="2" face="맑은 고딕"><strong>공지사항</strong></font></div></td>
		<td colspan="3">
			<img src="images/pagebg_03.jpg" width="327" height="202" alt=""></td>
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
			<img src="images/pagebg_06.jpg" width="886" height="1" alt=""></td>
		<td colspan="2" rowspan="2"><a href="http://www.kookmin.ac.kr"><img src="images/pagebg_07.jpg" width="108" height="77" border="0" alt=""></a></td>
		<td colspan="2" rowspan="2"></td>
		<td><div id="boardSub" onclick="MM_showHideLayers('apDiv4','','hide')" onmouseout="MM_showHideLayers('boardSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">공지사항  대외활동/공모전  자유게시판  뉴스</font></div>
<div id="studyGroupSub" ><font color="White" size="1.9" face="맑은 고딕">
	<a href="http://localhost:8080/WebP/HansarangApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">한사랑</a>
	<a href="http://localhost:8080/WebP/ModuriApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">모두리</a> 
	<a href="http://localhost:8080/WebP/EBizenApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">E-Bizen</a> 
	<a href="http://localhost:8080/WebP/ItisApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">ITIS</a>  
	<a href="http://localhost:8080/WebP/MisaApply.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')">MISA</a></font></div>
		  <div id="KPointSub" >
		  <a href="kpoint_description.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">K-Point란?</font></a>
		  <a href="kpoint_request.jsp" onclick="MM_showHideLayers('apDiv1','','hide')" onmouseout="MM_showHideLayers('KPointSub','','hide')"><font color="White" size="1.9" face="맑은 고딕">K-Point신청</font></a></div>
			<img src="images/&#xc2a4;&#xd398;&#xc774;&#xc11c;.gif" width="1" height="1" alt=""></td>
	</tr>
	<tr>
	

	  <td rowspan="5">&nbsp;</td>
		
		<td colspan="2" rowspan="3" align="center" valign="top">
			<img src="images/sidemenu.jpg" alt="" width="143" height="200">
			<div id="StudyGroupLeftMenu"><font size="2" face="맑은 고딕" color="White">
			  <p><br><br><form action = "member_page.jsp"  name ="정보수정" class="buttonstyle"  width="143">
			  <input type = "submit" class="buttonstyle" value = "회원정보수정"  width="143"></form></a></p>
            <p><form action = "kpoint_total.jsp" name ="kpoint" class="buttonstyle"  width="143">
				<input type = "submit" class="buttonstyle" value = "나의 K-Point점수"></form></a></p>
			  <p><form action = "myGroup.jsp" name = "Group" class="buttonstyle"  width="143"  width="143">
				<input type = "submit" class="buttonstyle" value = "MY학회"  width="143"></form></a></p>
              <p><form action = "Member_removal_check.jsp" name ="removal" class="buttonstyle"  width="143">
					<input type = "submit" class="buttonstyle" value = "회원탈퇴"  width="143">
					</form></a>
	  </p></font></div></td>
		<td rowspan="5">&nbsp;</td>
		<td colspan="2" rowspan="4" align="center" valign="top" >
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Connection conn=null; 


try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String jdbcDriver = "jdbc:sqlserver://localhost:1433;databaseName=JSP;";
String dbUser = "jsp2";
String dbPass = "1111";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
String message="";
String result="success";
String strSQL="Select*from Student where studentID = ? AND Pass =?";
PreparedStatement pstmt =conn.prepareStatement(strSQL);
pstmt.setString(1,id);
pstmt.setString(2,pass);
ResultSet rs=pstmt.executeQuery();

%>
<table>
<form method="post" action="Member_modify_process.jsp" name="userinput">
<%
//Update userlist set userpass=?,address=?,zip=?,email=?,job=? where userid=?
if(rs.next())
{
String name=rs.getString("name");
String ssn=rs.getString("ssn");
String address=rs.getString("address");
String email=rs.getString("email");

%>
  
  <center><font size="3"><b>회원정보 수정</b></font>
 
    <table width="600" border="1" cellspacing="2" cellpadding="1" >
  
     
     
     <tr> 
      <td bgcolor ='00b0f0' class="normalbold" width="600"> 
       <div align="center">사용자 ID</div>
      </td>
      <td width="154"  class="normal"> 
       <input type="text" name="id" size="50" value=<%=id%> readonly="readonly">
       
      </td>
     </tr>
     
     
     <tr> 
      <td bgcolor ='00b0f0' class="normalbold" width="600"> 
       <div align="center">비밀번호</div>
      </td>
      <td width="154" class="normal"> 
       <input type="text" name="pass" value=<%=pass%>>
       
      </td> 
      
       <tr>
      <td width="141" class="normalbold" bgcolor ='00b0f0'> 
       <div align="center">비밀번호 확인</div>
      </td>
      <td width="154" class="normal"> 
      <input type="text" name="pass2">
     </tr>
      
     </td>
     </tr>
     <tr> 
      <td bgcolor ='00b0f0' class="normalbold" width="600" height="23"> 
       <div align="center">사용자 이름</div>
      </td>
     <td width="154" class="normal"> 
       <input type="text" name="name" value=<%=name%> readonly="readonly" >
      </td>
     </tr>
     <tr> 
      <td bgcolor="CCCCCC" class="normalbold" width="600"> 
     
    <tr> 
     <td bgcolor ='00b0f0' class="normalbold" width="600"> 
      <div align="center">주 소</div>
     </td>
      <td width="154" class="normal"> 
      <input type="text" name="address" size="70" value=<%=address%>>
     </td>
    </tr>
    <tr> 
     <td bgcolor ='00b0f0' class="normalbold" width="600"> 
      <div align="center">E-Mail</div>
     </td>
      <td width="154" class="normal"> 
      <input type="text" name="email" value=<%=email%>>
     </td>
    </tr>
  
    <tr> 
     <td colspan="4" class="normal"> 
      <div align="center"> 
       <input onclick='checkUserInput()' type="button" name="modify"  value="수 정 "  >
       <input type="reset" name="reset" value="취   소">
      </div>
     </td>
    </tr>
     
    </table> 
   
 <%
 }
 else{
 %>
 <table>
  <tr>
   <td> 로그인 실패</td>
  </tr>
     <tr> 
   <td> 아이디 또는 패스워드가 틀립니다.</td>
   <BR><TD>
	<input type="button" onclick="history.back();" value="Back">
	</TD>
  </tr>
 </table>
<%
 }
}
catch(Exception e){
  out.println(e);
 }%>
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
<TR>
		<TD align ='center'>
		<Font size =2>회원전용페이지</Font>
		</TD>
  </TR>
		<TR>
		<TD align ='center'>
		<Font size =2><B><%=id %></B>님 환영합니다</Font>
		</TD>
		</TR>


<TR>
<TD align= 'center' bgcolor="#FFFFFF">
<Font size =2>이 페이지는 회원에게만 제공되는 페이지입니다.</Font>


</TD>
</TR>

</form>
</body>
</html>     