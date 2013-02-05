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
<title>Welcome To Our Site :: <%=Your_UserName%></title>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><b><font face="Verdana" size="2" color="#000080">You have
reached the </font><font face="Verdana" size="2" color="#FF0000">PROTECTED AREA</font><font face="Verdana" size="2" color="#000080">
of website.</font></b></p>
<p>&nbsp;</p>
<p align="center"><font face="Verdana" size="2" color="#000080">To know your
Registration Details simply click on the </font><font face="Verdana" size="2" color="#FF0000">MyAccount</font><font face="Verdana" size="2" color="#000080">
link given above.</font></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align="center">
  <center>
  <table border="0" width="481" cellspacing="0" cellpadding="0">
    <tr>
      <td width="479" valign="middle" align="center"><font size="2" face="Verdana" color="#000080">After clicking
logout link press </font><font face="Verdana" size="2" color="#FF0000">Back
        button</font><font size="2" face="Verdana" color="#000080"> of browser
        and see the results.</font> <font size="2" face="Verdana" color="#000080">The
user can't open the </font><font face="Verdana" size="2" color="#FF0000">Protected
        Area</font><font size="2" face="Verdana" color="#000080"> without
        Re-login.</font></td>
    </tr>
  </table>
  </center>
</div>

</body>
</html>