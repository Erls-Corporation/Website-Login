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

<% Dim MyLogin

Set MyLogin = Server.CreateObject("ADODB.Connection")
ConnStr = "DRIVER={Microsoft Access Driver (*.mdb)};pwd=password;"
ConnStr = ConnStr & "DBQ=" & Server.MapPath("db\users.mdb")
MyLogin.Open(ConnStr)

SQLtemp = "SELECT * FROM CustRecords WHERE Cust_UserName = '" & Request.Form("username") & "' AND Cust_Password = '" & Request.Form("userpassword") & "'"
Set rs = MyLogin.Execute(SQLtemp)

If Request.Form("username") = "" AND Request.Form("userpassword") = "" Then
	Session("Message") = ("<b><font face=""Verdana"" size=""2"" color=""#008080"">Login Failed! </font></b><font face=""Verdana"" size=""2"" color=""#0000FF"">Please enter your Username & Password.</font>")
	Response.Redirect ("login.asp")
	Response.End
End If

If Request.Form("username") = "" Then
	Session("Message") = ("<b><font face=""Verdana"" size=""2"" color=""#008080"">Login Failed! </font></b><font face=""Verdana"" size=""2"" color=""#0000FF"">Please enter your Username.</font>")
	Response.Redirect ("login.asp")
	Response.End
End If

If Request.Form("userpassword") = "" Then
	Session("Message") = ("<b><font face=""Verdana"" size=""2"" color=""#008080"">Login Failed! </font></b><font face=""Verdana"" size=""2"" color=""#0000FF"">Please enter your Password.</font>")
	Response.Redirect ("login.asp")
	Response.End
End If

If rs.eof then
	rs.Close
	MyLogin.Close
	set MyLogin = Nothing
	Session("Message") = ("<b><font face=""Verdana"" size=""2"" color=""#008080"">Login Failed! </font></b><font face=""Verdana"" size=""2"" color=""#0000FF"">Incorrect Username & Password.</font>")
	Response.Redirect ("login.asp")
	Response.End
End If

while not rs.eof

If Request.Form("username") = rs("Cust_UserName") AND Request.Form("userpassword") = rs("Cust_Password") Then

	dim Your_UserName
	Your_UserName = rs("Cust_UserName")
	dim Date_In
	Date_In = rs("Entry_Date")

	Response.Cookies("UserName") = Your_UserName
	Response.Cookies("still") = Date_In

	Session.TimeOut = 20
	Session("UserName") = "Yes"

	Response.Redirect "protected.asp?UserLoggedIn=" & Your_UserName
Else
	Session("Message") = ("<font face=""Verdana"" size=""2"" color=""#FF0000"">Login Failed! </font><font face=""Verdana"" size=""2"" color=""#0000FF"">Incorrect Username & Password.</font>")
	Response.Redirect ("login.asp")
	Response.End
End If

   rs.MoveNext
Wend

OnError Response.Redirect ("login.asp")

	
rs.Close
MyLogin.Close
set MyLogin = Nothing

%>