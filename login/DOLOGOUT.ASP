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


<%Your_UserName = request.cookies("UserName")%>
<%Date_In = request.cookies("still")%>


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
<title>Logout Successfully.</title>
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
    <td width="324" valign="middle" align="center" height="364">
<div align="center">
  <center>
  <table border="0" width="309" cellspacing="0" cellpadding="0" height="311">
    <tr>
      <td width="307" valign="middle" align="left" height="58">
        <p align="center"><b><font face="Arial" size="4" color="#FF0000">Sign
        Up!</font></b><font face="Verdana" size="2"> <font color="#000080">New
        User Register - </font><a href="register.asp" title="Click Here" target="_top"> <font color="#0000FF"> Click Here</a></font></a></font></td>
    </tr>
    <tr>
      <td width="307" valign="middle" align="center" height="293">
        <div align="center">
          <center>
          <table border="0" width="250" height="250" cellspacing="0" cellpadding="0" bgcolor="#FFA400">
            <tr>
              <td width="250" valign="middle" align="center" height="250">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
  id="Movie" width="250" height="250">
  <param name="movie" value="data/banner.swf">
  <param name="bgcolor" value="#FFA400">
  <param name="quality" value="high">
  <param name="allowscriptaccess" value="samedomain">
  <embed type="application/x-shockwave-flash"
   pluginspage="http://www.macromedia.com/go/getflashplayer"
   width="250" height="250"
   name="Movie3" src="data/banner.swf"
   bgcolor="#FFA400" quality="high"
   swLiveConnect="true" allowScriptAccess="samedomain"
  ></embed>
</object>
</td>
            </tr>
          </table>
          </center>
        </div>
      </td>
    </tr>
  </table>
  </center>
</div>
      </td>
      <td width="450" height="343" valign="middle" align="center">
      <div align="center">
<table border="0" width="400" cellpadding="0" cellspacing="0" height="176">
<form action="validate.asp" METHOD="post">
  <tr>
    <td width="390" colspan="3" valign="middle" align="center" height="45" bgcolor="#E2E2E2">
      <p align="left"><b><font face="Arial" size="3" color="#FF0000">&nbsp;&nbsp;
      Login!</font><font face="Verdana" size="2" color="#000080">&nbsp;&nbsp;
      Members Area</font></b></td>
  </tr>
  <tr>
    <td width="378" valign="middle" align="center" height="35" colspan="3"><center><b><font face="Verdana" size="2" color="#008080">Re-Login As Different User</font></b></center></td>
  </tr>
  <tr>
    <td width="117" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080"><b>Username</b></font></td>
    <td width="9" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="252" valign="middle" align="center" height="35"><input type="text" name="username" size="20" value="<% =Your_UserName %>"></td>
  </tr>
  <tr>
    <td width="117" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080"><b>Password</b></font></td>
    <td width="9" valign="middle" align="center" height="35"><font face="Verdana" size="2" color="#000080">-</font></td>
    <td width="252" valign="middle" align="center" height="35"><input type="password" name="userpassword" size="20" maxlength="10"></td>
  </tr>
  </center>
  <tr>
    <td width="390" colspan="3" valign="middle" align="center" height="45">
      <p align="center"><input type="submit" value="Submit" name="submit">&nbsp;&nbsp;
      <input type="reset" value="Reset" name="reset"></p>
    </td>
  </tr>
  <tr>
    <td width="390" colspan="3" valign="middle" align="center" height="45"><b>
      <font face="Verdana" size="2" color="#000080">Logout Completely - </font></b><a href="loginclose.asp" target="_top"><font face="Verdana" size="2" color="#0000FF">Click
      Here</font></a>
    </td>
  </tr>
  <tr>
    <td width="390" colspan="3" valign="middle" align="center" height="45"><p align="center"><font size="2" face="Verdana" color="#FF0000">Forget Your Password - </font><a href="forgot.asp" title="Click Here" target="_top"><font size="2" face="Verdana" color="#0000FF">Click Here</font></a></p>
    </td>
  </tr>
 </table>
</div>
    </td>
  </tr>
</table>
  </center>
  </div>
</form>
      </td>
    </tr>
  </table>
</div>

</body></html>