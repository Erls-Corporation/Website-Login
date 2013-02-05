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
Response.Expires = -1000
Response.ExpiresAbsolute = Now() - 1
If Session("UserLoggedIn") = "" then
	Response.Redirect ("admin.asp")
	Response.End
End If
%>

<head>
<title>Delete User From Database</title>
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

<%
dim id
dim conn
dim sql
id = request.querystring("id")
%>
<%
dim dsn
dsn="DBQ=" & Server.Mappath("..\db\users.mdb") & ";pwd=password;Driver={Microsoft Access Driver (*.mdb)};"
%>
<%
Set Conn = Server.CreateObject("ADODB.Connection")
Set Rs = Server.CreateObject("ADODB.Recordset")
    
Conn.Open dsn
    
SQL = "DELETE FROM CustRecords WHERE id="&id
rs.Open SQL, Conn

response.redirect ("edituser.asp")
%>