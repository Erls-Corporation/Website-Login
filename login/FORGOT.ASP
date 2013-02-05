<%@ Language=VBScript %>

<%
Option Explicit
Sub DrawPage
%>

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

<html>

<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->

<head>
<title>Forget Your Password</title>
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
  <table border="0" width="750" cellspacing="0" cellpadding="0" height="343">
    <tr>
      <td width="300" height="343" valign="top" align="left">
      <div align="center">
  <center>
<table border="0" width="750" cellspacing="0" cellpadding="0" height="364">
  <tr>
    <td width="314" valign="top" align="left" height="364"><div align="left">
  <table border="0" width="309" cellspacing="0" cellpadding="0" height="40">
    <tr>
      <td width="307" valign="middle" align="left" height="40">
        <p align="center"><b><font face="Arial" size="4" color="#FF0000">Sign
        Up!</font></b><font face="Verdana" size="2"> <font color="#000080">New
        User Register - </font><a href="register.asp" title="Click Here" target="_top"> <font color="#0000FF"> Click Here</a></font></font></td>
    </tr>
  </table>
</div>
      </td>
      <td width="460" height="343" valign="middle" align="center">
      <div align="center">
<table border="0" width="424" cellpadding="0" cellspacing="0" height="176">
<form method="post" action="lost.asp" name="LostPwd">
  <tr>
    <td width="414" colspan="3" valign="middle" align="center" height="45" bgcolor="#E2E2E2">
      <p align="left"><font face="Arial" size="3" color="#FF0000"><b>&nbsp;Forget
      Your Password!</b></font><b><font face="Verdana" size="2" color="#000080">&nbsp;
      Enter
      the Following -</font></b></td>
  </tr>
  <tr>
    <td width="402" valign="middle" align="center" height="35" colspan="3"><% =message%></center></td>
  </tr>
  <tr>
    <td width="117" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080"><b>Question</b></font></td>
    <td width="9" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="276" valign="middle" align="center" height="35">
     <select size="1" name="txtQuestion">
        <option></option>
        <option>Your Favorite Time-Pass</option>
        <option>Your Favorite Movie Star</option>
        <option>Yours Pet Name</option>
        <option>Favorite Playback Singer</option>
      </select>
    </td>
  </tr>
  <tr>
    <td width="117" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080"><b>Answer</b></font></td>
    <td width="9" valign="middle" align="center" height="35"></td>
    <td width="276" valign="middle" align="center" height="35"><input type="text" name="txtAnswer" size="23"></td>
  </tr>
  <tr>
    <td width="117" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080"><b>Email</b></font></td>
    <td width="9" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="276" valign="middle" align="center" height="35"><input type="text" name="txtEmail" size="23"></td>
  </tr>
  </center>
  <tr>
    <td width="414" colspan="3" valign="middle" align="center" height="45">
      <p align="center"><input type="submit" value="Submit" name="submit">&nbsp;&nbsp;
      <input type="reset" value="Reset" name="reset"></p>
    </td>
  </tr>
 </table>
</div>
    </td>
  </tr>
</table>
  </div>
</form>
      </td>
    </tr>
  </table>
</div>
  
</body></html>

<%
      End Sub
      dim message 
      message = Session("message")
      Session("message") = ""
      Call DrawPage
%>