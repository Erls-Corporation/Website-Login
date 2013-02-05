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
if Request.ServerVariables("REQUEST_METHOD") = "POST" then

    	strName = Request.Form("txtName")
    	strLastName = Request.Form("txtLastName")
    	strEmail = Request.Form("txtEmail")
    	strUserName = Request.Form("txtUserName")
   	strPassword = Request.Form("txtPassword")
    	strQuestion = Request.Form("txtQuestion")
    	strAnswer = Request.Form("txtAnswer")
    	strAddress = Request.Form("txtAddress")
    	strCity = Request.Form("txtCity")
    	strCountry = Request.Form("txtCountry")


    strDate = Now()
    blnValid = True
    strValid = "<p align=""left""><font face=""Verdana"" size=""4"" color=""#FF00000""><b>" & _
               "Registration Failed..!!</b></font></p>" & vbCrLf & _
               "<ul><font face=""Verdana"" size=""2"" color=""#000080"">" & vbCrLf

    if strName = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your First Name.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>" 
   end if 

    if strLastName = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Last Name.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>" 
   end if 

    if strEmail = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your E-Mail ID.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strUserName = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Username.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strPassword = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Password.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strQuestion = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Secret Question.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strAnswer = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Secret Answer.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strAddress = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Address.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strCity = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your City.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

    if strCountry = "" then
        blnValid = False
        strValid = strValid & "<table border=""0"" width=""302"" cellspacing=""0"" cellpadding=""0"" height=""22"">"  & vbCrLf &_
		     "<tr>"  & vbCrLf &_
		     "<td width=""300"" height=""22""><p align=""left""><font face=""Verdana"" size=""2"" color=""#000080""># Please Enter Your Country.</p></td>"  & vbCrLf &_
		     "</tr>" & vbCrLf &_
		     "</table>"
   end if 

        	strValid =  strValid & "<p align=""center""><a href=""register.asp"" target=""_top"" title=""Click Here""><font face=""Verdana"" size=""2"" color=""#0000FF"">Click Here To Continue</font></a></p>"
else
	strValid =  strValid & Response.Redirect ("register.asp")
   end if  
    
    if blnValid = True then
    
        strDSNPath = "PROVIDER=MSDASQL;DRIVER={Microsoft Access Driver (*.mdb)};pwd=password; DBQ=" & Server.MapPath("db\users.mdb")
        strSQL_Insert = "INSERT INTO CustRecords ( Cust_Name, Cust_LastName, Email, Cust_Username, Cust_Password, Cust_Question, Cust_Answer, Cust_Address, Cust_City, Cust_Country, Entry_Date)" & _
                        " VALUES ('" & strName & "','" & strLastName & "','" & strEmail & "','" & strUserName & "','" & strPassword & "','" & strQuestion & "','" & strAnswer & "','" & strAddress & "','" & strCity & "','" & strCountry & "','" & strDate & "');"
                        
       Set Conn=Server.CreateObject("ADODB.Connection")
            Conn.Open strDSNPath
                On error resume next
                Conn.Execute strSQL_Insert
            Conn.Close
        Set Conn = Nothing   
       
    if err.number <> 0 then
          
            strValid = "<p align=center><font face=""Verdana"" size=""2"" color=""#F0000""><b>" & _
                       "Sorry!</font></b><font face=""Verdana"" size=""2"" color=""#000080""> This Account Information has been filled by someone else.</font><br>" & _
                       "<br><font face=""Verdana"" size=""2"" color=""#000080"">Please choose a different <b>E-Mail Address</b> and <b>Username.</b></br>" & _
                       "</font></p>" & _
                       "<br><p align=""center""><a href=""register.asp"" target=""_self"" title=""Click Here""><font face=""Verdana"" size=""2"" color=""#0000FF"">Click Here To Continue</font></a></p>"
        else

        strValid = "<p align=""left""><b><font face=""Verdana"" size=""2"" color=""#008080"">Dear " & strName & " " & strLastName & ".</b></font>" & _
	"<p align=""center""><font face=""Verdana"" size=""2"" color=""#000080"">Your Name Has Been Registerd Successfully.</font></p><br>" & _
                  "<center><table border=""0"" width=""327"" height=""39"" cellspacing=""0"" cellpadding=""0"">" &_
	"<tr>" &_
	"<td width=""98"" valign=""middle"" align=""center"" height=""21""><font size=""2"" face=""Verdana"" color=""#000080""><b>Username</b></font></td>" &_
	"<td width=""20"" align=""left"" valign=""middle"" height=""21""><font size=""2"" face=""Verdana""><b>-</b></font></td>" &_
	"<td width=""187"" valign=""middle"" align=""left"" height=""21""><font size=""2"" face=""Verdana"" color=""#FF0000"">" & strUserName & "</font></td>" &_
	"</tr>" &_
	"<tr>" &_
	"<td width=""98"" valign=""middle"" align=""center"" height=""18""><font size=""2"" face=""Verdana"" color=""#000080""><b>Password</b></font></td>" &_
	"<td width=""20"" align=""left"" valign=""middle"" height=""18""><font size=""2"" face=""Verdana""><b>-</b></font></td>" &_
	"<td width=""187"" valign=""middle"" align=""left"" height=""18""><font size=""2"" face=""Verdana"" color=""#FF0000"">" & strPassword & "</font></td>" &_
	"</tr></table></center>" &_
	"<p align=""center""><a href=""login.asp"" target=""_top"" title=""Click Here""><font face=""Verdana"" size=""2"" color=""#0000FF"">Click Here To Continue</font></a></p>"

end if

end if
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
<title>Registration.</title>
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

<p align="center">
<%
Response.Write strValid
 %>
</p>


</body></html>