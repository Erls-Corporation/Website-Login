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

<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->

<%
Session("UserLoggedIn") = ""
If Request.Form("logine") = "check" Then
	CheckLogin
Else
	ShowLogin
End If
%>

<html>
<head>
<title>Site Administrator</title>
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

<% Sub ShowLogin %>
<div align="center">
  <center>
<table ID="page" cellspacing="0" cellpadding="0">
<tr>
<form method="POST" action="admin.asp">
<td>
    <div align="center">
      <center>
    <table border="2" width="68%" ID="page" bordercolor="#000080" cellspacing="1" cellpadding="3">
    <tr>
      <td width="50%">
        <p align="center"><font size="2" face="Verdana" color="#000080">&nbsp;User Name :</font></p>
      </td>
      <td width="50%">
        <p align="center"><input type="text" name="username" size="20" style="font-family: Verdana; font-size: 10pt"></p>
      </td>
    </tr>
    <tr>
      <td width="50%">
        <p align="center"><font size="2" face="Verdana" color="#000080">&nbsp;Password :</font></p>
      </td>
      <td width="50%">
        <p align="center"><input type="password" name="userpwd" size="20" style="font-family: Verdana; font-size: 10pt"></p>
      </td>
    </tr>
    <tr>
      <input type=HIDDEN name=logine value=check>
      <td width="50%"><input type="submit" value="     Login      " name="Submit"></td>
      <td width="50%"><input type="reset" value="           Reset         " name="Reset">
      </td>
      </tr>
  </table>
      </center>
    </div>
</form>
</tr>
</table>
  </center>
  </div>
  
<% End Sub %>
<% Sub CheckLogin
if UCase(Request.Form("username")) = "ADMIN" And UCase(Request.Form("userpwd")) = "PASSWORD" Then
	Session("UserLoggedIn") = "Yes"
	Response.Redirect "edituser.asp?adminLoggedin=" & Session.SessionID
Else
	Response.Write("<p align='center'><font face='Verdana, Arial, Helvetica' size='2' color='#008080'><b>Login Failed.</b></font></p>")
	Response.Write("<p align='center'><font face='Verdana, Arial, Helvetica' size='2' color='#FF0000'>Incorrect UserName or Password !</font></p>")
	ShowLogin
End If
End Sub
%>

</body>
</html>
