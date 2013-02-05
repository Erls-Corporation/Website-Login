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
<title>Logout</title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
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

<%Your_UserName = request.cookies("UserName")%>
<%Date_In = request.cookies("still")%>

<% Dim sTarget
sTarget = "dologout.asp?UserLoggedOut=" & Session.SessionID
%>

<!--THE BELOW CODE IS USED TO CLOSE THE SEESION CREATED AT THE TIME OF LOGIN -->

<%
Session.Abandon()
Response.Redirect sTarget
Response.End
%>

<!--END OF THE CODE -->

</body>
</html>