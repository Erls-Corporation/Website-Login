<%@ Language=VBScript %>

<%
option explicit
response.buffer = true
dim flag
dim bgcolor
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
<title>Account Information Of Registered Users.</title>
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

<style>
BODY
{
    BACKGROUND-COLOR: white;font-size:14px;font-family:Arial,Verdana;
}
a
{
color:blue;text-decoration:none;
}

a:hover
{
color:red;text-decoration:underline;
}

td
{
color:#000000;font-size:12px;font-family:Arial,Verdana;
}


.inputSubmit
{
font-size:7pt;
color:white;
background-color: black;
BORDER-BOTTOM: 1px solid;
BORDER-LEFT: 1px solid;
BORDER-RIGHT: 1px solid;
BORDER-TOP: 1px solid;
z-index:10;
}

.inputBut
{
font-family:Verdana,Arial;
font-size:10pt;
background-color: white;
BORDER-BOTTOM: 1px solid;
BORDER-LEFT: 1px solid;
BORDER-RIGHT: 1px solid;
BORDER-TOP: 1px solid;
z-index:10;
}

</style>
<script>
function rusure() { 

 if (confirm("Are you sure You want to Delete?")) { 
return true; 
 } else { 

return false; 
 } 
} 
</script>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<div align="center">
  <center>
  <table border="0" width="779" cellspacing="0" cellpadding="0" height="20">
    <tr>
      <td width="779" valign="middle" align="right" height="20"><b><a href="logout.asp" target="_top"><font face="Verdana" size="2" color="#FF0000">LOGOUT</font></a><font face="Verdana" size="2" color="#000080">&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</font>
        </b></td>
    </tr>
  </table>
  </center>
</div>
<%
dim dsn
dsn="DBQ=" & Server.Mappath("..\db\users.mdb") & ";pwd=password;Driver={Microsoft Access Driver (*.mdb)};"
%>
<%
response.buffer = true
dim useraction,subject,comm,Cust_Name,Cust_Lastname,Cust_Address,Cust_City,Cust_Country,email,conn,rs,sql
dim id
	Set Conn = Server.CreateObject("ADODB.Connection")
	Set Rs = Server.CreateObject("ADODB.Recordset")
    Conn.Open dsn
    SQL = "SELECT id,Cust_Name,Cust_Lastname,Cust_Address,Cust_City,Cust_Country,email from CustRecords order by id desc"
	rs.open sql,conn
	if rs.eof and rs.bof then
		response.write "<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><center><b><font face=""Arial,Verdana"" size=""5"" color=""#FF0000"">Sorry!</font></b>&nbsp;&nbsp;<b><font face=""Verdana"" size=""2"" color=""#000080"">There are no records of Register Users in our Database.</font></b><br><font face=""Verdana"" size=""2"" title=""Click Here""><a href=../login.asp>Click Here To Continue</a></font>"
	else
		response.write "<table>"
		do while not rs.eof
			if flag = 0 then
				flag = 1
				bgcolor = "#CFCFCF"
			else
				flag = 0
				bgcolor = "#E9E9E9"
	end if
			
			response.write "<tr bgcolor=" & bgcolor & "><td>"
			Cust_Name = rs("Cust_Name") & " "
			Cust_Lastname = rs("Cust_Lastname") & "</td><td>"
			Cust_Address = rs("Cust_Address") & "</td><td>"
			Cust_City = rs("Cust_City") & "</td><td>"
			Cust_Country = rs("Cust_Country") & "</td><td>"
			id = rs("id")
			Email = rs("Email") & "</td><td><a onclick='return rusure()' href='deleteuser.asp?id="& id &"'>Delete User</a></td>"
			
			
			
%>
&nbsp;
<%
			response.write id
%>
&nbsp;&nbsp;
<%
			response.write Cust_Name
			response.write Cust_Lastname
%>
&nbsp;
<%
			response.write Cust_Address
%>
&nbsp;
<%
			response.write Cust_City
%>
&nbsp;
<%
			response.write Cust_Country
%>
&nbsp;
<%
			response.write Email
			
		rs.movenext
		loop
			response.write "</tr></table></font>"
	end if
%>


			