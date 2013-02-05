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

<head>
<title>Forget Your Password</title>
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

<p align="center">&nbsp;</p>
<%
Dim LostPassword

Set LostPassword = Server.CreateObject("ADODB.Connection")
ConnStr = "DRIVER={Microsoft Access Driver (*.mdb)};pwd=password;"
ConnStr = ConnStr & "DBQ=" & Server.MapPath("db\users.mdb")
LostPassword.Open(ConnStr)

SQLtemp = "SELECT * FROM CustRecords WHERE Cust_Question = '" & Request.Form("txtQuestion") & "' AND Cust_Answer = '" & Request.Form("txtAnswer") & "' AND email = '" & Request.Form("txtEmail") & "' "
Set rs = LostPassword.Execute(SQLtemp)

If Request.Form("txtQuestion") = "" AND Request.Form("txtAnswer") = "" AND Request.Form("txtEmail") = "" then
	Session("Message") = "<font face='Verdana, Arial, Helvetica' size='2' color='#008080'><b>Invalid Entry! </b></font><font face='Verdana, Arial, Helvetica' size='2' color='0000FF'>Please enter Question, Answer and E-Mail.</font>"
   	Response.Redirect "forgot.asp"
	Response.End
End if

If Request.Form("txtQuestion") = "" then
	Session("Message") = "<font face='Verdana, Arial, Helvetica' size='2' color='#008080'><b>Invalid Entry! </b></font><font face='Verdana, Arial, Helvetica' size='2' color='0000FF'>Please select Secret Question.</font>"
   	Response.Redirect "forgot.asp"
	Response.End
End if

If Request.Form("txtAnswer") = "" then
	Session("Message") = "<font face='Verdana, Arial, Helvetica' size='2' color='#008080'><b>Invalid Entry! </b></font><font face='Verdana, Arial, Helvetica' size='2' color='0000FF'>Please enter Answer.</font>"
   	Response.Redirect "forgot.asp"
	Response.End
End if

If Request.Form("txtEmail") = "" then
	Session("Message") = "<font face='Verdana, Arial, Helvetica' size='2' color='#008080'><b>Invalid Entry! </b></font><font face='Verdana, Arial, Helvetica' size='2' color='0000FF'>Please enter E-Mail Address.</font>"
	Response.Redirect "forgot.asp"
	Response.End
End if

If rs.eof then
	rs.Close
	LostPassword.Close
	set LostPassword = Nothing
	Session("Message") = "<b><font face='Verdana, Arial, Helvetica' size='2' color='FF0000'>Sorry! </font></b><font face='Verdana, Arial, Helvetica' size='2' color='0000FF'>No Matches Found.</font>"
	Response.Redirect "forgot.asp"
	Response.End
end if

while not rs.eof


If Request.Form("txtQuestion") = rs("Cust_Question") AND Request.Form("txtAnswer") = rs("Cust_Answer") AND Request.Form("txtEmail") = rs("Email") Then

	dim Your_UserName
	Your_UserName = rs("Cust_UserName")
	dim Date_In
	Date_In = rs("Entry_Date")

	Response.Cookies("UserName") = Your_UserName
	Response.Cookies("still") = Date_In

	Session.TimeOut = 20
	Session("UserName") = "Yes"

	Response.Redirect "protected.asp?UserLoggedIn=" & Your_UserName
	Response.End
Else
	Session("Message") = "<font face='Verdana, Arial, Helvetica' size='2' color='FF0000'>Incorrect Answer or E-Mail Address.</font></p>"
	Response.redirect("forgot.asp")
	Response.End
End If
   rs.MoveNext
Wend

rs.Close
LostPassword.Close
set LostPassword = Nothing

%>

</body>
</html>