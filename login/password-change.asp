<%@ Language=VBScript %>

<%Response.Expires = -1 %>
<%Response.ExpiresAbsolute = Now() - 1 %>
<%Response.AddHeader "pragma", "no-cache" %>
<%Response.AddHeader "cache-control", "private" %>
<%Response.CacheControl = "no-cache" %>

<% 
Response.Expires = -1000
Response.Buffer = True
Response.Clear 
%>

<!--#include file="logincheck.asp"-->


<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->


<head>
<title>Password Change :: <%=Your_UserName%></title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="stylesheet" type="text/css" href="data/css.css">
<STYLE TYPE="text/css"> 

BODY 
{ 
scrollbar-base-color: #7782C3; 
scrollbar-arrow-color: #ffffff;
scrollbar-DarkShadow-Color: #000000; 
}
</STYLE>
</head>

<body bgcolor="#FFFFFF">

<div align="center">
  <center>
<table border="0" width="390" cellspacing="0" cellpadding="0">
<FORM ACTION="process.asp" METHOD="post">
  <tr>
    <td width="388" valign="middle" align="center" height="45" colspan="3"><font size="2" face="Verdana" color="#000080"><b>Please
      enter the following information</b></font></td>
  </tr>
  <tr>
    <td width="171" valign="middle" align="left" height="30"><font size="2" face="Verdana" color="#000080">Old
      Password</font></td>
    <td width="22" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="191" valign="middle" align="left" height="30"><INPUT TYPE="password" size="15" NAME="oldpassword" maxlength="10"></td>
  </tr>
  <tr>
    <td width="171" valign="middle" align="left" height="30"><font size="2" face="Verdana" color="#000080">New
      Password</font></td>
    <td width="22" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="191" valign="middle" align="left" height="30"><INPUT TYPE="password" size="15" NAME="newpassword1"  maxlength="10"></td>
  </tr>
  <tr>
    <td width="171" valign="middle" align="left" height="30"><font size="2" face="Verdana" color="#000080">Confirm
      New Password</font></td>
    <td width="22" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="191" valign="middle" align="left" height="30"><INPUT TYPE="password" size="15" NAME="newpassword2"  maxlength="10"></td>
  </tr>
  <tr>
    <td width="384" valign="middle" align="right" height="30" colspan="3"><font face="Verdana" size="1" color="#0000FF">Password
      can be Alpha-Numeric but not more than 10 words.</font></td>
  </tr>
  <tr>
    <td width="384" valign="middle" align="center" height="30" colspan="3"><INPUT TYPE="submit" VALUE="Change">
      &nbsp;&nbsp;&nbsp;&nbsp; <INPUT TYPE="reset" VALUE="Reset"></td>
  </tr>
</table>
  </center>
</div>
</FORM>
</body>
</html>