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
<title>Your Account Information :: <%=Your_UserName%></title>
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

<% Dim MyAccount

Set MyAccount = Server.CreateObject("ADODB.Connection")
ConnStr = "DRIVER={Microsoft Access Driver (*.mdb)};pwd=password;"
ConnStr = ConnStr & "DBQ=" & Server.MapPath("db\users.mdb")
MyAccount.Open(ConnStr)

SQLtemp = "SELECT * FROM CustRecords WHERE Cust_UserName = '" & Request.Cookies("UserName") & "' "
Set rs = MyAccount.Execute(SQLtemp)

while not rs.eof

If Request.Cookies("UserName") = rs("Cust_UserName") Then

	dim Your_Name
	Your_Name = rs("Cust_Name")
	dim Your_LastName
	Your_LastName = rs("Cust_LastName")
	dim Your_UserName
	Your_UserName = rs("Cust_UserName")
	dim Your_Password
	Your_Password = rs("Cust_Password")
	dim Your_Email
	Your_Email = rs("Email")
	dim Your_Address
	Your_Address = rs("Cust_Address")
	dim Your_City
	Your_City = rs("Cust_City")
	dim Your_Country
	Your_Country = rs("Cust_Country")
	dim Date_In
	Date_In = rs("Entry_Date")
	Response.Write "<p align=left><font face=Verdana size=2 color=#008080><b>Dear " & Your_Name & " " & Your_LastName & "</font></b></p>" &_
			"<div align=center>" &_
			"<center>" &_
			"<table border=0 width=626 height=0 cellspacing=0 cellpadding=0>" &_
			"<tr>" &_
			"<td width=604 height=45 colspan=3><font size=2 face=Verdana color=#000080><b>Your Account Details as follows -</b></font>&nbsp;</td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Username</font></td>" &_
			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#FF0000>" & Your_UserName & "</font></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Password</font></td>" &_
			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#FF0000>" & Your_Password & "</font></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30></td>" &_
			"<td width=26 align=center valign=middle height=30></td>" &_
			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=1 color=#0000FF>Both username & password are case sensitive.</font></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=45><font face=Verdana size=2 color=#000080><b>Personal details - </b></font></td>" &_
			"<td width=26 align=center valign=middle height=45></td>" &_
			"<td width=388 valign=middle align=left height=45></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30><font face=Verdana size=2 color=#000080>E-Mail</font></td>" &_
			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#000080>" & Your_Email & "</font></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Address</font></td>" &_
      			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
      			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#000080>" & Your_Address & "</font></td>" &_
    			"</tr>" &_
    			"<tr>" &_
      			"<td width=190 height=30><font face=Verdana size=2 color=#000080>City</font></td>" &_
      			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
      			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#000080>" & Your_City & "</font></td>" &_
    			"</tr>" &_
    			"<tr>" &_
      			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Country</font></td>" &_
      			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
      			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#000080>" & Your_Country & "</font></td>" &_
    			"</tr>" &_
    			"<tr>" &_
      			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Registered on&nbsp;</font></td>" &_
      			"<td width=26 align=center valign=middle height=30><font face=Verdana size=2 color=#000080>-</font></td>" &_
      			"<td width=388 height=30 valign=middle align=left><font face=Verdana size=2 color=#000080>" & Date_In & " </font></td>" &_
    			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30></td>" &_
			"<td width=26 align=center valign=middle height=30></td>" &_
			"<td width=388 height=30 valign=middle align=left></td>" &_
			"</tr>" &_
    			"<tr>" &_
			"<td width=190 height=45><font face=Verdana size=2 color=#000080><b>Edit Personal Details - </b></font></td>" &_
			"<td width=26 align=center valign=middle height=30></td>" &_
			"<td width=388 height=30 valign=middle align=left></td>" &_
			"</tr>" &_
			"<tr>" &_
			"<td width=190 height=30><font face=Verdana size=2 color=#000080>Change Your Password</font></td>" &_
			"<td width=26 align=center valign=middle height=45></td>" &_
			"<td width=388 height=30 valign=middle align=left><a href=""password-change.asp?Password"" target=""_top"" title=""Click Here""><font face=Verdana size=2 color=#0000FF>Click Here</font></a></td>" &_
			"</tr>" &_
			"</table>" &_
			"</div>"
End If
	
   rs.MoveNext
Wend



	
rs.Close
MyAccount.Close
set MyAccount = Nothing

%>
