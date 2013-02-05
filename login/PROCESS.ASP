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
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
</head>

<%Dim ChangePass
Set ChangePass = Server.CreateObject("ADODB.Connection")

ConnStr = "DRIVER={Microsoft Access Driver (*.mdb)};pwd=password;"
ConnStr = ConnStr & "DBQ=" & Server.MapPath("db\users.mdb")
ChangePass.Open(ConnStr)

SQLtemp = "SELECT * FROM CustRecords WHERE Cust_UserName = '" & Request.Cookies("UserName") & "' "
Set rs = ChangePass.Execute(SQLtemp)

while not rs.eof

If Request.Cookies("UserName") = rs("Cust_UserName") AND Request.Form("oldpassword") = rs("Cust_Password") AND Request.Form("newpassword1") = Request.Form("newpassword2") then
   SQL = "UPDATE CustRecords SET Cust_Password = '" & Request.Form("newpassword2") & "' WHERE Cust_UserName = '" & Request.Cookies("UserName") & "'"
   ChangePass.Execute(sql)

   Response.redirect ("updated.asp?PasswordUpdated=successful")
Else
   Response.redirect ("incorrect.asp?PasswordUpdated=failed")

End If
   rs.MoveNext
Wend

   OnError response.Redirect ("incorrect.asp?PasswordUpdated=failed")
rs.Close
ChangePass.Close
set ConnStr = Nothing

%>