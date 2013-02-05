<%@ EnableSessionState=False %>

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
<title>Access Denied</title>
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


<body>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p><font face="Arial" color="#FF0000" size="5">&nbsp;&nbsp;&nbsp; Access Denied!</font></p>
<p align="center">&nbsp;</p>
<p align="center"><font face="Verdana" size="2" color="#000080">You are
trying to visit MEMBERS AREA of our site. </font></p>
<p align="center"><font face="Verdana" size="2" color="#000080">To continue
please </font><a href="login.asp" target="_top"><font face="Verdana" size="2" color="#0000FF">Click
Here</font></a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

</body>

</html>
